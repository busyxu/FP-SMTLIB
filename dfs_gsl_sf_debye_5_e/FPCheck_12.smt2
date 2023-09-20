(declare-fun a_ack!21 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!21) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!21) ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!21) ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!21) ((_ to_fp 11 53) #x4041acdd632f662a))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!21) ((_ to_fp 11 53) #x4086232bdd7abcd2))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!21))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4083133f2791ab68)
                                  ((_ to_fp 11 53) a_ack!21))
                          ((_ to_fp 11 53) a_ack!21))
                  ((_ to_fp 11 53) #x4083133f2791ab68))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4083133f2791ab68)
                                  ((_ to_fp 11 53) a_ack!21)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.eq (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) #x4083133f2791ab68)
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4083133f2791ab68)
                       ((_ to_fp 11 53) a_ack!21)))
       ((_ to_fp 11 53) a_ack!21)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4083133f2791ab68)
                  ((_ to_fp 11 53) a_ack!21))
          ((_ to_fp 11 53) a_ack!21))
  a_ack!21))

(check-sat)
(exit)
