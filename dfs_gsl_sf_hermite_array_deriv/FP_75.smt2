(declare-fun b_ack!1343 () (_ BitVec 32))
(declare-fun a_ack!1344 () (_ BitVec 32))
(assert (not (bvslt b_ack!1343 #x00000000)))
(assert (not (bvslt a_ack!1344 #x00000000)))
(assert (not (= #x00000000 a_ack!1344)))
(assert (not (bvslt b_ack!1343 a_ack!1344)))
(assert (not (= b_ack!1343 a_ack!1344)))
(assert (not (= b_ack!1343 (bvadd #x00000001 a_ack!1344))))
(assert (not (bvslt a_ack!1344 #x00000000)))
(assert (not (= #x00000000 (bvand a_ack!1344 #x00000001))))
(assert (let ((a!1 (= #x00000000
              (ite (= ((_ extract 31 31) a_ack!1344) #b1)
                   (concat #b1 ((_ extract 31 1) a_ack!1344))
                   (concat #b0 ((_ extract 31 1) a_ack!1344))))))
  (not a!1)))
(assert (let ((a!1 (bvand (ite (= ((_ extract 31 31) a_ack!1344) #b1)
                       (concat #b1 ((_ extract 31 1) a_ack!1344))
                       (concat #b0 ((_ extract 31 1) a_ack!1344)))
                  #x00000001)))
  (not (= #x00000000 a!1))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) a_ack!1344) #b1)
                (concat #b1 ((_ extract 31 1) a_ack!1344))
                (concat #b0 ((_ extract 31 1) a_ack!1344)))))
(let ((a!2 (= #x00000000
              (ite (= ((_ extract 31 31) a!1) #b1)
                   (concat #b1 ((_ extract 31 1) a!1))
                   (concat #b0 ((_ extract 31 1) a!1))))))
  (not a!2))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) a_ack!1344) #b1)
                (concat #b1 ((_ extract 31 1) a_ack!1344))
                (concat #b0 ((_ extract 31 1) a_ack!1344)))))
(let ((a!2 (bvand (ite (= ((_ extract 31 31) a!1) #b1)
                       (concat #b1 ((_ extract 31 1) a!1))
                       (concat #b0 ((_ extract 31 1) a!1)))
                  #x00000001)))
  (= #x00000000 a!2))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) a_ack!1344) #b1)
                (concat #b1 ((_ extract 31 1) a_ack!1344))
                (concat #b0 ((_ extract 31 1) a_ack!1344)))))
(let ((a!2 (ite (= ((_ extract 31 31) a!1) #b1)
                (concat #b1 ((_ extract 31 1) a!1))
                (concat #b0 ((_ extract 31 1) a!1)))))
(let ((a!3 (= #x00000000
              (ite (= ((_ extract 31 31) a!2) #b1)
                   (concat #b1 ((_ extract 31 1) a!2))
                   (concat #b0 ((_ extract 31 1) a!2))))))
  (not a!3)))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) a_ack!1344) #b1)
                (concat #b1 ((_ extract 31 1) a_ack!1344))
                (concat #b0 ((_ extract 31 1) a_ack!1344)))))
(let ((a!2 (ite (= ((_ extract 31 31) a!1) #b1)
                (concat #b1 ((_ extract 31 1) a!1))
                (concat #b0 ((_ extract 31 1) a!1)))))
(let ((a!3 (bvand (ite (= ((_ extract 31 31) a!2) #b1)
                       (concat #b1 ((_ extract 31 1) a!2))
                       (concat #b0 ((_ extract 31 1) a!2)))
                  #x00000001)))
  (= #x00000000 a!3)))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) a_ack!1344) #b1)
                (concat #b1 ((_ extract 31 1) a_ack!1344))
                (concat #b0 ((_ extract 31 1) a_ack!1344)))))
(let ((a!2 (ite (= ((_ extract 31 31) a!1) #b1)
                (concat #b1 ((_ extract 31 1) a!1))
                (concat #b0 ((_ extract 31 1) a!1)))))
(let ((a!3 (ite (= ((_ extract 31 31) a!2) #b1)
                (concat #b1 ((_ extract 31 1) a!2))
                (concat #b0 ((_ extract 31 1) a!2)))))
(let ((a!4 (= #x00000000
              (ite (= ((_ extract 31 31) a!3) #b1)
                   (concat #b1 ((_ extract 31 1) a!3))
                   (concat #b0 ((_ extract 31 1) a!3))))))
  (not a!4))))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) a_ack!1344) #b1)
                (concat #b1 ((_ extract 31 1) a_ack!1344))
                (concat #b0 ((_ extract 31 1) a_ack!1344)))))
(let ((a!2 (ite (= ((_ extract 31 31) a!1) #b1)
                (concat #b1 ((_ extract 31 1) a!1))
                (concat #b0 ((_ extract 31 1) a!1)))))
(let ((a!3 (ite (= ((_ extract 31 31) a!2) #b1)
                (concat #b1 ((_ extract 31 1) a!2))
                (concat #b0 ((_ extract 31 1) a!2)))))
(let ((a!4 (bvand (ite (= ((_ extract 31 31) a!3) #b1)
                       (concat #b1 ((_ extract 31 1) a!3))
                       (concat #b0 ((_ extract 31 1) a!3)))
                  #x00000001)))
  (not (= #x00000000 a!4)))))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) a_ack!1344) #b1)
                (concat #b1 ((_ extract 31 1) a_ack!1344))
                (concat #b0 ((_ extract 31 1) a_ack!1344)))))
(let ((a!2 (ite (= ((_ extract 31 31) a!1) #b1)
                (concat #b1 ((_ extract 31 1) a!1))
                (concat #b0 ((_ extract 31 1) a!1)))))
(let ((a!3 (ite (= ((_ extract 31 31) a!2) #b1)
                (concat #b1 ((_ extract 31 1) a!2))
                (concat #b0 ((_ extract 31 1) a!2)))))
(let ((a!4 (ite (= ((_ extract 31 31) a!3) #b1)
                (concat #b1 ((_ extract 31 1) a!3))
                (concat #b0 ((_ extract 31 1) a!3)))))
  (= #x00000000
     (ite (= ((_ extract 31 31) a!4) #b1)
          (concat #b1 ((_ extract 31 1) a!4))
          (concat #b0 ((_ extract 31 1) a!4)))))))))
(assert (not (bvult a_ack!1344 #x00000012)))
(assert (not (bvule a_ack!1344 #x000000aa)))

(check-sat)
(exit)
