(declare-fun e0_ack!988 () (_ BitVec 64))
(declare-fun e1_ack!989 () (_ BitVec 64))
(declare-fun e2_ack!990 () (_ BitVec 64))
(declare-fun x2_ack!986 () (_ BitVec 64))
(declare-fun x1_ack!985 () (_ BitVec 64))
(declare-fun y1_ack!987 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e0_ack!988)
                    ((_ to_fp 11 53) e0_ack!988))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e1_ack!989)
                    ((_ to_fp 11 53) e1_ack!989))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e2_ack!990)
                    ((_ to_fp 11 53) e2_ack!990))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) e1_ack!989)
                                  ((_ to_fp 11 53) e1_ack!989)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) e2_ack!990)
                                  ((_ to_fp 11 53) e2_ack!990)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!985)
                                   ((_ to_fp 11 53) #x409f400000000000))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!986)
                                   ((_ to_fp 11 53) #x409f400000000000))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x0000000000000000))
         ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!985)
                                   ((_ to_fp 11 53) x1_ack!985))
                           ((_ to_fp 11 53) #x409f400000000000))))
      (a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!986)
                                   ((_ to_fp 11 53) x2_ack!986))
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
                           ((_ to_fp 11 53) x1_ack!985)
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!986)
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
                           ((_ to_fp 11 53) x1_ack!985)
                           ((_ to_fp 11 53) x1_ack!985))
                   ((_ to_fp 11 53) #x409f400000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!986)
                                   ((_ to_fp 11 53) x2_ack!986))
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
                           ((_ to_fp 11 53) x1_ack!985)
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!986)
                                   ((_ to_fp 11 53) #x409f400000000000))
                           ((_ to_fp 11 53) #x3fda827999fcef32)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!985)
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ffb504f333f9de6)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x0000000000000000)))))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!986)
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
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!986)
                           ((_ to_fp 11 53) x2_ack!986))
                   ((_ to_fp 11 53) #x409f400000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!985)
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!986)
                                   ((_ to_fp 11 53) #x409f400000000000))
                           ((_ to_fp 11 53) #x3fda827999fcef32)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!985)
                                   ((_ to_fp 11 53) x1_ack!985))
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3fda827999fcef32))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!986)
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcc)
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x0000000000000000))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcc)
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x0000000000000000)))))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x0000000000000000))))))
(let ((a!7 (fp.lt (fp.abs a!3)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3cb0000000000000)
                          (fp.add roundNearestTiesToEven
                                  (fp.abs a!5)
                                  (fp.abs a!6))))))
  (not a!7))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!986)
                           ((_ to_fp 11 53) x2_ack!986))
                   ((_ to_fp 11 53) #x409f400000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!985)
                                   ((_ to_fp 11 53) x1_ack!985))
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3fda827999fcef32)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcc)
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x0000000000000000))))))
  (fp.eq a!3 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!985)
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!986)
                                   ((_ to_fp 11 53) #x409f400000000000))
                           ((_ to_fp 11 53) #x3fda827999fcef32)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!986)
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcc)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x0000000000000000))))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!986)
                                   ((_ to_fp 11 53) x2_ack!986))
                           ((_ to_fp 11 53) #x409f400000000000))
                   ((_ to_fp 11 53) #x3fda827999fcef32))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!985)
                                   ((_ to_fp 11 53) x1_ack!985))
                           ((_ to_fp 11 53) #x409f400000000000))
                   a!1)))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x0000000000000000))))))
  (not (fp.lt a!3 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!985)
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!986)
                                   ((_ to_fp 11 53) #x409f400000000000))
                           ((_ to_fp 11 53) #x3fda827999fcef32)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!986)
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcc)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x0000000000000000))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3fe618dab0184066))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!986)
                                   ((_ to_fp 11 53) x2_ack!986))
                           ((_ to_fp 11 53) #x409f400000000000))
                   ((_ to_fp 11 53) #x3fda827999fcef32))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!985)
                                   ((_ to_fp 11 53) x1_ack!985))
                           ((_ to_fp 11 53) #x409f400000000000))
                   a!1)))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x0000000000000000))))))
  (not (fp.gt a!3 ((_ to_fp 11 53) #x3fe618dab0184066)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!986)
                                   ((_ to_fp 11 53) x2_ack!986))
                           ((_ to_fp 11 53) #x409f400000000000))
                   ((_ to_fp 11 53) #x3fda827999fcef32)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!985)
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!986)
                                   ((_ to_fp 11 53) #x409f400000000000))
                           ((_ to_fp 11 53) #x3fda827999fcef32)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!985)
                                   ((_ to_fp 11 53) x1_ack!985))
                           ((_ to_fp 11 53) #x409f400000000000))
                   a!1))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!986)
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcc)
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x0000000000000000))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x0000000000000000))))))
  (not (fp.gt a!3 a!5))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!985)
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!986)
                                   ((_ to_fp 11 53) #x409f400000000000))
                           ((_ to_fp 11 53) #x3fda827999fcef32)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!986)
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcc)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x0000000000000000))))))
  (fp.lt a!2 ((_ to_fp 11 53) #x3fe618dab0184066)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!985)
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!986)
                                   ((_ to_fp 11 53) #x409f400000000000))
                           ((_ to_fp 11 53) #x3fda827999fcef32)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!986)
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcc)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x0000000000000000))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3fe618dab0184066))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!985)
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!986)
                                   ((_ to_fp 11 53) #x409f400000000000))
                           ((_ to_fp 11 53) #x3fda827999fcef32)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!986)
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcc)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x0000000000000000))))))
  (not (fp.isNaN a!2)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!986)
                                   ((_ to_fp 11 53) x2_ack!986))
                           ((_ to_fp 11 53) #x409f400000000000))
                   ((_ to_fp 11 53) #x3fda827999fcef32)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!985)
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!986)
                                   ((_ to_fp 11 53) #x409f400000000000))
                           ((_ to_fp 11 53) #x3fda827999fcef32)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!985)
                                   ((_ to_fp 11 53) x1_ack!985))
                           ((_ to_fp 11 53) #x409f400000000000))
                   a!1))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!986)
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe6a09e667f3bcc)
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x0000000000000000))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x0000000000000000))))))
  (not (fp.lt a!3 a!5))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!986)
                                   ((_ to_fp 11 53) x2_ack!986))
                           ((_ to_fp 11 53) #x409f400000000000))
                   ((_ to_fp 11 53) #x3fda827999fcef32))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!985)
                                   ((_ to_fp 11 53) x1_ack!985))
                           ((_ to_fp 11 53) #x409f400000000000))
                   a!1)))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x0000000000000000))))))
  (not (fp.gt a!3 ((_ to_fp 11 53) #x3fe618dab0184066)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!986)
                                   ((_ to_fp 11 53) x2_ack!986))
                           ((_ to_fp 11 53) #x409f400000000000))
                   ((_ to_fp 11 53) #x3fda827999fcef32))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!985)
                                   ((_ to_fp 11 53) x1_ack!985))
                           ((_ to_fp 11 53) #x409f400000000000))
                   a!1)))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x0000000000000000))))))
  (not (fp.isNaN a!3))))))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) y1_ack!987)
                                  ((_ to_fp 11 53) #x409f400000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) y1_ack!987)
                  ((_ to_fp 11 53) #x409f400000000000)))
  #xbfe6a09e667f3bcc))

(check-sat)
(exit)
