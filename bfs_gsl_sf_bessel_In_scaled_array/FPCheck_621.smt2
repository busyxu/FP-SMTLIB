(declare-fun a_ack!2681 () (_ BitVec 32))
(declare-fun b_ack!2679 () (_ BitVec 32))
(declare-fun c_ack!2680 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!2679 a_ack!2681)))
(assert (not (bvslt a_ack!2681 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2680) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!2679)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!2680))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) c_ack!2680))
                          (fp.abs ((_ to_fp 11 53) c_ack!2680)))
                  ((_ to_fp 11 53) #x41fd6e2bc3b82b06))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!2680))
                           (fp.abs ((_ to_fp 11 53) c_ack!2680))))))
  (not (fp.lt ((_ to_fp 11 53) #x3fd28f5c28f5c28f)
              (fp.div roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3fe0000000000000)
                      a!1)))))
(assert (FPCHECK_FADD_UNDERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!2680))
          (fp.abs ((_ to_fp 11 53) c_ack!2680)))))

(check-sat)
(exit)
