(declare-fun e0_ack!422 () (_ BitVec 64))
(declare-fun e1_ack!423 () (_ BitVec 64))
(declare-fun e2_ack!424 () (_ BitVec 64))
(declare-fun x2_ack!421 () (_ BitVec 64))
(declare-fun x1_ack!420 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e0_ack!422)
                    ((_ to_fp 11 53) e0_ack!422))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e1_ack!423)
                    ((_ to_fp 11 53) e1_ack!423))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e2_ack!424)
                    ((_ to_fp 11 53) e2_ack!424))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) e1_ack!423)
                                  ((_ to_fp 11 53) e1_ack!423)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) e2_ack!424)
                                  ((_ to_fp 11 53) e2_ack!424)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!420)
                                   ((_ to_fp 11 53) #x409f400000000000))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!421)
                                   ((_ to_fp 11 53) #x409f400000000000))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x0000000000000000))
         ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!420)
                                   ((_ to_fp 11 53) x1_ack!420))
                           ((_ to_fp 11 53) #x409f400000000000))))
      (a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!421)
                                   ((_ to_fp 11 53) x2_ack!421))
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
                           ((_ to_fp 11 53) x1_ack!420)
                           ((_ to_fp 11 53) #x409f400000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!421)
                                   ((_ to_fp 11 53) #x409f400000000000))
                           ((_ to_fp 11 53) #x3fda827999fcef32)))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) x1_ack!420)
            ((_ to_fp 11 53) #x409f400000000000))
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3ffb504f333f9de6)
            (fp.add roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x0000000000000000))))))

(check-sat)
(exit)
