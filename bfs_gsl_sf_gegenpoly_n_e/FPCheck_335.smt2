(declare-fun b_ack!1781 () (_ BitVec 64))
(declare-fun a_ack!1783 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!1782 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1781) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!1783 #x00000000)))
(assert (not (= #x00000000 a_ack!1783)))
(assert (not (= #x00000001 a_ack!1783)))
(assert (not (= #x00000002 a_ack!1783)))
(assert (not (= #x00000003 a_ack!1783)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1781) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1781) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1781) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvsle #x00000004 a_ack!1783))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!1781))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!1781)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4018000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!1781))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   a!2)
                           ((_ to_fp 11 53) c_ack!1782))
                   ((_ to_fp 11 53) c_ack!1782))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!1781))
                           ((_ to_fp 11 53) c_ack!1782))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1781))
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) c_ack!1782))
    a!4)))))

(check-sat)
(exit)
