(declare-fun n_ack!92 () (_ BitVec 32))
(assert (not (bvslt n_ack!92 #x00000000)))
(assert (not (= #x00000000 (bvand n_ack!92 #x00000001))))
(assert (not (= #x00000000 (concat #b0 ((_ extract 31 1) n_ack!92)))))
(assert (let ((a!1 (= #x00000000
              (bvand (concat #b0 ((_ extract 31 1) n_ack!92)) #x00000001))))
  (not a!1)))
(assert (let ((a!1 (concat #b0
                   ((_ extract 31 1) (concat #b0 ((_ extract 31 1) n_ack!92))))))
  (not (= #x00000000 a!1))))
(assert (let ((a!1 (concat #b0
                   ((_ extract 31 1) (concat #b0 ((_ extract 31 1) n_ack!92))))))
  (= #x00000000 (bvand a!1 #x00000001))))

(check-sat)
(exit)
