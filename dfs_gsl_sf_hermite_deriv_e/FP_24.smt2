(declare-fun b_ack!508 () (_ BitVec 32))
(declare-fun a_ack!509 () (_ BitVec 32))
(assert (not (bvslt b_ack!508 #x00000000)))
(assert (not (bvslt a_ack!509 #x00000000)))
(assert (not (bvslt b_ack!508 a_ack!509)))
(assert (not (bvult b_ack!508 a_ack!509)))
(assert (= a_ack!509 b_ack!508))
(assert (bvult a_ack!509 #x00000012))
(assert (bvult #x0000000000000000
       (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!509)))))
(assert (bvult (bvadd #x0000000000000008
              (bvmul #x0000000000000018 (concat #x00000000 a_ack!509)))
       #x0000000000001001))
(assert (not (bvslt a_ack!509 #x00000000)))
(assert (not (= #x00000000 (bvand a_ack!509 #x00000001))))
(assert (let ((a!1 (= #x00000000
              (ite (= ((_ extract 31 31) a_ack!509) #b1)
                   (concat #b1 ((_ extract 31 1) a_ack!509))
                   (concat #b0 ((_ extract 31 1) a_ack!509))))))
  (not a!1)))
(assert (let ((a!1 (bvand (ite (= ((_ extract 31 31) a_ack!509) #b1)
                       (concat #b1 ((_ extract 31 1) a_ack!509))
                       (concat #b0 ((_ extract 31 1) a_ack!509)))
                  #x00000001)))
  (not (= #x00000000 a!1))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) a_ack!509) #b1)
                (concat #b1 ((_ extract 31 1) a_ack!509))
                (concat #b0 ((_ extract 31 1) a_ack!509)))))
(let ((a!2 (= #x00000000
              (ite (= ((_ extract 31 31) a!1) #b1)
                   (concat #b1 ((_ extract 31 1) a!1))
                   (concat #b0 ((_ extract 31 1) a!1))))))
  (not a!2))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) a_ack!509) #b1)
                (concat #b1 ((_ extract 31 1) a_ack!509))
                (concat #b0 ((_ extract 31 1) a_ack!509)))))
(let ((a!2 (bvand (ite (= ((_ extract 31 31) a!1) #b1)
                       (concat #b1 ((_ extract 31 1) a!1))
                       (concat #b0 ((_ extract 31 1) a!1)))
                  #x00000001)))
  (not (= #x00000000 a!2)))))
(assert (let ((a!1 (ite (= ((_ extract 31 31) a_ack!509) #b1)
                (concat #b1 ((_ extract 31 1) a_ack!509))
                (concat #b0 ((_ extract 31 1) a_ack!509)))))
(let ((a!2 (ite (= ((_ extract 31 31) a!1) #b1)
                (concat #b1 ((_ extract 31 1) a!1))
                (concat #b0 ((_ extract 31 1) a!1)))))
  (= #x00000000
     (ite (= ((_ extract 31 31) a!2) #b1)
          (concat #b1 ((_ extract 31 1) a!2))
          (concat #b0 ((_ extract 31 1) a!2)))))))
(assert (bvslt (bvsub b_ack!508 a_ack!509) #x00000000))

(check-sat)
(exit)
