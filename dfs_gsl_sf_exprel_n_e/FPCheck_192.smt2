(declare-fun a_ack!633 () (_ BitVec 32))
(declare-fun b_ack!632 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!633 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!632) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!632))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ed965fea53d6e41)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!633)))))
(assert (not (= #x00000000 a_ack!633)))
(assert (not (= #x00000001 a_ack!633)))
(assert (not (= #x00000002 a_ack!633)))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!632)
            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!633))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!632)
            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!633))))
(assert (fp.gt ((_ to_fp 11 53) b_ack!632)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #xc024000000000000)
               ((_ to_fp 11 53) roundNearestTiesToEven a_ack!633))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!633)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!632))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!3 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!632))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FDIV_OVERFLOW a!2 a!3))))

(check-sat)
(exit)
