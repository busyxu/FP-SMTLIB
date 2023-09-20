(declare-fun a_ack!177 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!177) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!177) ((_ to_fp 11 53) #x0020000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!177) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!177))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!177)
                       ((_ to_fp 11 53) a_ack!177))
               ((_ to_fp 11 53) a_ack!177))
       ((_ to_fp 11 53) a_ack!177)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!177))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!177)
                       ((_ to_fp 11 53) a_ack!177))
               ((_ to_fp 11 53) a_ack!177))
       ((_ to_fp 11 53) a_ack!177)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!177)
                                   ((_ to_fp 11 53) a_ack!177)))
                   ((_ to_fp 11 53) #x3e355b410b3332c5))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e927e0ffaaee53d)
                         a!1)
                 ((_ to_fp 11 53) #x3e927e0ffaaee53d))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!177)
                                   ((_ to_fp 11 53) a_ack!177)))
                   ((_ to_fp 11 53) #x3e355b410b3332c5))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e927e0ffaaee53d)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3e927e0ffaaee53d))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!177)
                                   ((_ to_fp 11 53) a_ack!177))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!177)
                           ((_ to_fp 11 53) a_ack!177)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e927e0ffaaee53d)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3e355b410b3332c5))))))
  (fp.eq (fp.div roundNearestTiesToEven a!2 a!1)
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3e927e0ffaaee53d)
                 (fp.mul roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3e355b410b3332c5)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!177)
                                   ((_ to_fp 11 53) a_ack!177)))
                   ((_ to_fp 11 53) #x3e355b410b3332c5))))
(let ((a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3e927e0ffaaee53d)
                                  a!1))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!177)
                           ((_ to_fp 11 53) a_ack!177)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e927e0ffaaee53d)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3e355b410b3332c5))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e927e0ffaaee53d)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3e355b410b3332c5))))))
  (fp.eq a!3 a!1)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!177)
                           ((_ to_fp 11 53) a_ack!177)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e927e0ffaaee53d)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3e355b410b3332c5))))))
  (FPCHECK_FADD_UNDERFLOW #x3ee845c8e2e1423a a!2))))

(check-sat)
(exit)
