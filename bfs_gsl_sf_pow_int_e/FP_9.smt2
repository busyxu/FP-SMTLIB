(declare-fun b_ack!106 () (_ BitVec 32))
(assert (not (bvslt b_ack!106 #x00000000)))
(assert (not (= #x00000000 (bvand b_ack!106 #x00000001))))
(assert (= #x00000000
   (ite (= ((_ extract 31 31) b_ack!106) #b1)
        (concat #b1 ((_ extract 31 1) b_ack!106))
        (concat #b0 ((_ extract 31 1) b_ack!106)))))

(check-sat)
(exit)
