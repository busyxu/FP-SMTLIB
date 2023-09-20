(declare-fun b_ack!1793 () (_ BitVec 64))
(declare-fun a_ack!1795 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!1794 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1793) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!1795 #x00000000)))
(assert (not (= #x00000000 a_ack!1795)))
(assert (not (= #x00000001 a_ack!1795)))
(assert (not (= #x00000002 a_ack!1795)))
(assert (not (= #x00000003 a_ack!1795)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1793) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1793) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1793) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvsle #x00000004 a_ack!1795))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) b_ack!1793))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!1793)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4018000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!1793))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   a!2)
                           ((_ to_fp 11 53) c_ack!1794))
                   ((_ to_fp 11 53) c_ack!1794))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!1793))
                           ((_ to_fp 11 53) c_ack!1794))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1793))
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) c_ack!1794))
    a!4)))))

(check-sat)
(exit)
