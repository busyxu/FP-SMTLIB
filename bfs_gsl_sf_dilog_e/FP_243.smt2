(declare-fun a_ack!1705 () (_ BitVec 64))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1705) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1705) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1705) ((_ to_fp 11 53) #x3ff028f5c28f5c29))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1705) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1705) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1705) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1705) ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1705) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1705)
                           ((_ to_fp 11 53) a_ack!1705))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1705)
                                   a!1)))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #x3cb0000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1705)
                           ((_ to_fp 11 53) a_ack!1705))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1705)
                           a!1)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!1705))
                           ((_ to_fp 11 53) #x3fdc71c71c71c71c)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!2
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) a_ack!1705)
                         a!1))
         (fp.mul roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!1705))
                 ((_ to_fp 11 53) #x3fdc71c71c71c71c))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1705)
                           ((_ to_fp 11 53) a_ack!1705))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1705)
                           a!1)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!1705))
                           ((_ to_fp 11 53) #x3fdc71c71c71c71c)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!1705))
                           ((_ to_fp 11 53) #x3fdc71c71c71c71c)))))
  (fp.eq a!3 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!1705) a!1))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1705)
                           ((_ to_fp 11 53) a_ack!1705))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1705)
                           a!1)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!1705))
                           ((_ to_fp 11 53) #x3fdc71c71c71c71c)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!1705))
                           ((_ to_fp 11 53) #x3fdc71c71c71c71c))
                   a!2)))
  (not (fp.lt (fp.abs a!3) ((_ to_fp 11 53) #x3cb0000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1705)
                           ((_ to_fp 11 53) a_ack!1705))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!1705))
                           ((_ to_fp 11 53) #x3fdc71c71c71c71c))
                   ((_ to_fp 11 53) a_ack!1705)))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1705)
                           a!1)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!1705))
                           ((_ to_fp 11 53) #x3fdc71c71c71c71c)))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x3fe2000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3fe2000000000000))))))
  (not (fp.lt (fp.abs a!4) ((_ to_fp 11 53) #x3cb0000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1705)
                           ((_ to_fp 11 53) a_ack!1705))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1705)
                           a!1)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!1705))
                           ((_ to_fp 11 53) #x3fdc71c71c71c71c))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!1705))
                           ((_ to_fp 11 53) #x3fdc71c71c71c71c))
                   ((_ to_fp 11 53) a_ack!1705))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3fe2000000000000))
                           ((_ to_fp 11 53) a_ack!1705))
                   ((_ to_fp 11 53) #x3fe47ae147ae147c))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3fe2000000000000)))
                   a!4)))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   a!5
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3fe2000000000000))))))
  (fp.eq a!6 a!4)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1705)
                           ((_ to_fp 11 53) a_ack!1705))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1705)
                           a!1)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!1705))
                           ((_ to_fp 11 53) #x3fdc71c71c71c71c))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!1705))
                           ((_ to_fp 11 53) #x3fdc71c71c71c71c))
                   ((_ to_fp 11 53) a_ack!1705))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3fe2000000000000))
                           ((_ to_fp 11 53) a_ack!1705))
                   ((_ to_fp 11 53) #x3fe47ae147ae147c))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3fe2000000000000)))
                   a!4)))
  (fp.eq (fp.sub roundNearestTiesToEven a!5 a!4)
         (fp.add roundNearestTiesToEven
                 a!2
                 (fp.mul roundNearestTiesToEven
                         a!3
                         ((_ to_fp 11 53) #x3fe2000000000000)))))))))

(check-sat)
(exit)
