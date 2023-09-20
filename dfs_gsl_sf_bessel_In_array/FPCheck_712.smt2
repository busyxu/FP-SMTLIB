(declare-fun c_ack!2989 () (_ BitVec 64))
(declare-fun a_ack!2990 () (_ BitVec 32))
(declare-fun b_ack!2988 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!2989))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (not (bvslt b_ack!2988 a_ack!2990)))
(assert (not (bvslt a_ack!2990 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2989) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!2988)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!2989))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) c_ack!2989))
                          (fp.abs ((_ to_fp 11 53) c_ack!2989)))
                  ((_ to_fp 11 53) #x41fd6e2bc3b82b06))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!2989))
                           (fp.abs ((_ to_fp 11 53) c_ack!2989))))))
  (not (fp.lt ((_ to_fp 11 53) #x3fd28f5c28f5c28f)
              (fp.div roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3fe0000000000000)
                      a!1)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!2989))
                           (fp.abs ((_ to_fp 11 53) c_ack!2989))))))
  (not (fp.lt (fp.div roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3fe0000000000000)
                      a!1)
              ((_ to_fp 11 53) #x3ec965fea53d6e41)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!2989)))
                   ((_ to_fp 11 53) #x407ea00000000000))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x410428a2f98d7287)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!2989)))
                   ((_ to_fp 11 53) #x407ea00000000000))))
  (FPCHECK_FMUL_ACCURACY #x4028000000000000 a!1)))

(check-sat)
(exit)
