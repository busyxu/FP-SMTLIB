(declare-fun n_ack!251 () (_ BitVec 32))
(assert (not (bvslt n_ack!251 #x00000000)))
(assert (= #x00000000 (bvand n_ack!251 #x00000001)))
(assert (not (= #x00000000 (concat #b0 ((_ extract 31 1) n_ack!251)))))
(assert (= #x00000000 (bvand (concat #b0 ((_ extract 31 1) n_ack!251)) #x00000001)))
(assert (let ((a!1 (concat #b0
                   ((_ extract 31 1) (concat #b0 ((_ extract 31 1) n_ack!251))))))
  (not (= #x00000000 a!1))))
(assert (let ((a!1 (concat #b0
                   ((_ extract 31 1) (concat #b0 ((_ extract 31 1) n_ack!251))))))
  (= #x00000000 (bvand a!1 #x00000001))))
(assert (let ((a!1 (concat #b0
                   ((_ extract 31 1) (concat #b0 ((_ extract 31 1) n_ack!251))))))
  (not (= #x00000000 (concat #b0 ((_ extract 31 1) a!1))))))
(assert (let ((a!1 (concat #b0
                   ((_ extract 31 1) (concat #b0 ((_ extract 31 1) n_ack!251))))))
  (= #x00000000 (bvand (concat #b0 ((_ extract 31 1) a!1)) #x00000001))))
(assert (let ((a!1 (concat #b0
                   ((_ extract 31 1) (concat #b0 ((_ extract 31 1) n_ack!251))))))
(let ((a!2 (concat #b0 ((_ extract 31 1) (concat #b0 ((_ extract 31 1) a!1))))))
  (not (= #x00000000 a!2)))))
(assert (let ((a!1 (concat #b0
                   ((_ extract 31 1) (concat #b0 ((_ extract 31 1) n_ack!251))))))
(let ((a!2 (concat #b0 ((_ extract 31 1) (concat #b0 ((_ extract 31 1) a!1))))))
  (= #x00000000 (bvand a!2 #x00000001)))))

(check-sat)
(exit)
