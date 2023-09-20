(declare-fun b_ack!76 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun a_ack!77 () (_ BitVec 64))
(assert (not (bvslt b_ack!76 #x00000000)))
(assert (not (= #x00000000 (bvand b_ack!76 #x00000001))))
(assert (let ((a!1 (= #x00000000
              (ite (= ((_ extract 31 31) b_ack!76) #b1)
                   (concat #b1 ((_ extract 31 1) b_ack!76))
                   (concat #b0 ((_ extract 31 1) b_ack!76))))))
  (not a!1)))
(assert (let ((a!1 (bvand (ite (= ((_ extract 31 31) b_ack!76) #b1)
                       (concat #b1 ((_ extract 31 1) b_ack!76))
                       (concat #b0 ((_ extract 31 1) b_ack!76)))
                  #x00000001)))
  (not (= #x00000000 a!1))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!77)
          ((_ to_fp 11 53) a_ack!77))
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!77)
          ((_ to_fp 11 53) a_ack!77))))

(check-sat)
(exit)
