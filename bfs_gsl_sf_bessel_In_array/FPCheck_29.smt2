(declare-fun c_ack!159 () (_ BitVec 64))
(declare-fun a_ack!160 () (_ BitVec 32))
(declare-fun b_ack!158 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!159))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (not (bvslt b_ack!158 a_ack!160)))
(assert (not (bvslt a_ack!160 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!159) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!158)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!159))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) c_ack!159))
                          (fp.abs ((_ to_fp 11 53) c_ack!159)))
                  ((_ to_fp 11 53) #x41fd6e2bc3b82b06))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!159))
                           (fp.abs ((_ to_fp 11 53) c_ack!159))))))
  (not (fp.lt ((_ to_fp 11 53) #x3fd28f5c28f5c28f)
              (fp.div roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3fe0000000000000)
                      a!1)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.abs ((_ to_fp 11 53) c_ack!159))
  (fp.abs ((_ to_fp 11 53) c_ack!159))))

(check-sat)
(exit)
