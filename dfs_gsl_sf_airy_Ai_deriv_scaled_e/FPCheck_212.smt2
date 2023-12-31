(declare-fun a_ack!795 () (_ BitVec 64))
(declare-fun b_ack!794 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!795) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!795) ((_ to_fp 11 53) #xc010000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!795) ((_ to_fp 11 53) #xc000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!795) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (= #x00000000 (bvand b_ack!794 #x00000007)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4030000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!795)
                                   ((_ to_fp 11 53) a_ack!795))
                           ((_ to_fp 11 53) a_ack!795)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4022000000000000))
                           ((_ to_fp 11 53) #x401c000000000000)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #xbff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FADD_OVERFLOW a!4 #xbc8305f0c060d5c9))))))

(check-sat)
(exit)
