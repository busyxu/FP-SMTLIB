(declare-fun a_ack!1821 () (_ BitVec 32))
(declare-fun b_ack!1820 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!1821 #x00000000)))
(assert (not (= #x00000000 a_ack!1821)))
(assert (not (= #x00000001 a_ack!1821)))
(assert (= #x00000002 a_ack!1821))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1820) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1820) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1820) ((_ to_fp 11 53) #x4059000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1820) ((_ to_fp 11 53) #x4085eeaad5511c64)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x41f7328cc0000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1820))
                           ((_ to_fp 11 53) #xc2344c3b28000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc1bc8cfc00000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1820))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x418308a800000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1820))
                           a!2))))
  (FPCHECK_FADD_OVERFLOW
    #xc14baf8000000000
    (fp.mul roundNearestTiesToEven
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!1820))
            a!3))))))

(check-sat)
(exit)
