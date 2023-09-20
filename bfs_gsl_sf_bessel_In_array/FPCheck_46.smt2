(declare-fun c_ack!210 () (_ BitVec 64))
(declare-fun a_ack!211 () (_ BitVec 32))
(declare-fun b_ack!209 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!210))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (not (bvslt b_ack!209 a_ack!211)))
(assert (not (bvslt a_ack!211 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!210) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!209)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!210))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) c_ack!210))
                          (fp.abs ((_ to_fp 11 53) c_ack!210)))
                  ((_ to_fp 11 53) #x41fd6e2bc3b82b06))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!210))
                           (fp.abs ((_ to_fp 11 53) c_ack!210))))))
  (not (fp.lt ((_ to_fp 11 53) #x3fd28f5c28f5c28f)
              (fp.div roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3fe0000000000000)
                      a!1)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!210))
                           (fp.abs ((_ to_fp 11 53) c_ack!210))))))
  (not (fp.lt (fp.div roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3fe0000000000000)
                      a!1)
              ((_ to_fp 11 53) #x3ec965fea53d6e41)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!210)))
                   ((_ to_fp 11 53) #x407ea00000000000))))
  (FPCHECK_FADD_ACCURACY
    #x7ff8000000000001
    (CF_log (fp.div roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x7ff0000000000001))))))

(check-sat)
(exit)
