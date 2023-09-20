(declare-fun a_ack!2570 () (_ BitVec 32))
(declare-fun b_ack!2568 () (_ BitVec 32))
(declare-fun c_ack!2569 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!2568 a_ack!2570)))
(assert (not (bvslt a_ack!2570 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2569) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!2568)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!2569))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) c_ack!2569))
                          (fp.abs ((_ to_fp 11 53) c_ack!2569)))
                  ((_ to_fp 11 53) #x41fd6e2bc3b82b06))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!2569))
                           (fp.abs ((_ to_fp 11 53) c_ack!2569))))))
  (not (fp.lt ((_ to_fp 11 53) #x3fd28f5c28f5c28f)
              (fp.div roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3fe0000000000000)
                      a!1)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.abs ((_ to_fp 11 53) c_ack!2569))
  (fp.abs ((_ to_fp 11 53) c_ack!2569))))

(check-sat)
(exit)
