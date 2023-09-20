(declare-fun b_ack!107 () (_ BitVec 32))
(assert (not (bvslt b_ack!107 #x00000000)))
(assert (not (= #x00000000 (bvand b_ack!107 #x00000001))))
(assert (let ((a!1 (= #x00000000
              (ite (= ((_ extract 31 31) b_ack!107) #b1)
                   (concat #b1 ((_ extract 31 1) b_ack!107))
                   (concat #b0 ((_ extract 31 1) b_ack!107))))))
  (not a!1)))

(check-sat)
(exit)
