(declare-fun a_ack!1793 () (_ BitVec 32))
(declare-fun b_ack!1792 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!1793 #x00000000)))
(assert (not (= #x00000000 a_ack!1793)))
(assert (not (= #x00000001 a_ack!1793)))
(assert (= #x00000002 a_ack!1793))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1792) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1792) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1792) ((_ to_fp 11 53) #x4059000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1792) ((_ to_fp 11 53) #x4085eeaad5511c64)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x41f7328cc0000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1792))
                           ((_ to_fp 11 53) #xc2344c3b28000000)))))
  (FPCHECK_FADD_ACCURACY
    #xc1bc8cfc00000000
    (fp.mul roundNearestTiesToEven
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!1792))
            a!1))))

(check-sat)
(exit)
