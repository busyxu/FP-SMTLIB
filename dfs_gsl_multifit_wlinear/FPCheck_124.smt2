(declare-fun e0_ack!650 () (_ BitVec 64))
(declare-fun e1_ack!651 () (_ BitVec 64))
(declare-fun e2_ack!652 () (_ BitVec 64))
(declare-fun x2_ack!649 () (_ BitVec 64))
(declare-fun x1_ack!648 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e0_ack!650)
                    ((_ to_fp 11 53) e0_ack!650))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e1_ack!651)
                    ((_ to_fp 11 53) e1_ack!651))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e2_ack!652)
                    ((_ to_fp 11 53) e2_ack!652))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) e1_ack!651)
                                  ((_ to_fp 11 53) e1_ack!651)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) e2_ack!652)
                                  ((_ to_fp 11 53) e2_ack!652)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!648)
                                   ((_ to_fp 11 53) #x409f400000000000))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!649)
                                   ((_ to_fp 11 53) #x409f400000000000))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x0000000000000000))
         ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!648)
                                   ((_ to_fp 11 53) x1_ack!648))
                           ((_ to_fp 11 53) #x409f400000000000))))
      (a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!649)
                                   ((_ to_fp 11 53) x2_ack!649))
                           ((_ to_fp 11 53) #x409f400000000000)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (fp.eq a!3 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!648)
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!649)
                                   ((_ to_fp 11 53) #x409f400000000000))
                           ((_ to_fp 11 53) #x3fda827999fcef32)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x0000000000000000))))))
  (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!648)
                           ((_ to_fp 11 53) x1_ack!648))
                   ((_ to_fp 11 53) #x409f400000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!649)
                                   ((_ to_fp 11 53) x2_ack!649))
                           ((_ to_fp 11 53) #x409f400000000000))
                   ((_ to_fp 11 53) #x3fda827999fcef32))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ffb504f333f9de6)
                           (fp.add roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!1 a!2)
                                   ((_ to_fp 11 53) #x0000000000000000))))))
  (fp.eq (fp.abs a!3) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!648)
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!649)
                                   ((_ to_fp 11 53) #x409f400000000000))
                           ((_ to_fp 11 53) #x3fda827999fcef32)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!648)
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ffb504f333f9de6)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x0000000000000000)))))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!649)
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcc)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x0000000000000000))))))
  (fp.lt (fp.abs a!2)
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3cb0000000000000)
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fe618dab0184066)
                         (fp.abs a!3)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!648)
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!649)
                                   ((_ to_fp 11 53) #x409f400000000000))
                           ((_ to_fp 11 53) #x3fda827999fcef32))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!649)
                                   ((_ to_fp 11 53) x2_ack!649))
                           ((_ to_fp 11 53) #x409f400000000000))
                   ((_ to_fp 11 53) #x3fda827999fcef32))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!649)
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcc)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x0000000000000000)))))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!648)
                                   ((_ to_fp 11 53) x1_ack!648))
                           ((_ to_fp 11 53) #x409f400000000000))
                   a!3)))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x0000000000000000))))))
  (FPCHECK_FADD_UNDERFLOW (fp.abs a!2) (fp.abs a!5))))))

(check-sat)
(exit)
