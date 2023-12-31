(declare-fun b_ack!129 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun a_ack!130 () (_ BitVec 64))
(assert (not (bvslt b_ack!129 #x00000000)))
(assert (= #x00000000 (bvand b_ack!129 #x00000001)))
(assert (let ((a!1 (= #x00000000
              (ite (= ((_ extract 31 31) b_ack!129) #b1)
                   (concat #b1 ((_ extract 31 1) b_ack!129))
                   (concat #b0 ((_ extract 31 1) b_ack!129))))))
  (not a!1)))
(assert (let ((a!1 (bvand (ite (= ((_ extract 31 31) b_ack!129) #b1)
                       (concat #b1 ((_ extract 31 1) b_ack!129))
                       (concat #b0 ((_ extract 31 1) b_ack!129)))
                  #x00000001)))
  (= #x00000000 a!1)))
(assert (let ((a!1 (ite (= ((_ extract 31 31) b_ack!129) #b1)
                (concat #b1 ((_ extract 31 1) b_ack!129))
                (concat #b0 ((_ extract 31 1) b_ack!129)))))
(let ((a!2 (= #x00000000
              (ite (= ((_ extract 31 31) a!1) #b1)
                   (concat #b1 ((_ extract 31 1) a!1))
                   (concat #b0 ((_ extract 31 1) a!1))))))
  (not a!2))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) b_ack!129) #b1)
                (concat #b1 ((_ extract 31 1) b_ack!129))
                (concat #b0 ((_ extract 31 1) b_ack!129)))))
(let ((a!2 (bvand (ite (= ((_ extract 31 31) a!1) #b1)
                       (concat #b1 ((_ extract 31 1) a!1))
                       (concat #b0 ((_ extract 31 1) a!1)))
                  #x00000001)))
  (= #x00000000 a!2))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!130)
                           ((_ to_fp 11 53) a_ack!130))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!130)
                           ((_ to_fp 11 53) a_ack!130)))))
  (FPCHECK_FMUL_ACCURACY a!1 a!1)))

(check-sat)
(exit)
