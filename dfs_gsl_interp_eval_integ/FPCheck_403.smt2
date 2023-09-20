(declare-fun x1_ack!4960 () (_ BitVec 64))
(declare-fun x0_ack!4964 () (_ BitVec 64))
(declare-fun x2_ack!4961 () (_ BitVec 64))
(declare-fun b_ack!4963 () (_ BitVec 64))
(declare-fun a_ack!4962 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4964) ((_ to_fp 11 53) x1_ack!4960)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4960) ((_ to_fp 11 53) x2_ack!4961)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4960)
                       ((_ to_fp 11 53) x0_ack!4964))
               ((_ to_fp 11 53) x0_ack!4964))
       ((_ to_fp 11 53) x1_ack!4960)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4960)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4960)
                       ((_ to_fp 11 53) x0_ack!4964)))
       ((_ to_fp 11 53) x0_ack!4964)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4961)
                       ((_ to_fp 11 53) x1_ack!4960))
               ((_ to_fp 11 53) x1_ack!4960))
       ((_ to_fp 11 53) x2_ack!4961)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4961)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4961)
                       ((_ to_fp 11 53) x1_ack!4960)))
       ((_ to_fp 11 53) x1_ack!4960)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4960)
                    ((_ to_fp 11 53) x0_ack!4964))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4961)
                    ((_ to_fp 11 53) x1_ack!4960))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4962) ((_ to_fp 11 53) b_ack!4963))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4962) ((_ to_fp 11 53) x0_ack!4964))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4963) ((_ to_fp 11 53) x2_ack!4961))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4962) ((_ to_fp 11 53) b_ack!4963))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4962) ((_ to_fp 11 53) x0_ack!4964))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4962) ((_ to_fp 11 53) x1_ack!4960)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4960) ((_ to_fp 11 53) a_ack!4962))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4963) ((_ to_fp 11 53) x1_ack!4960))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4963) ((_ to_fp 11 53) x2_ack!4961)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4961)
                    ((_ to_fp 11 53) x1_ack!4960))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4962)
                       ((_ to_fp 11 53) x1_ack!4960))
               ((_ to_fp 11 53) x1_ack!4960))
       ((_ to_fp 11 53) a_ack!4962)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!4962)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4962)
                       ((_ to_fp 11 53) x1_ack!4960)))
       ((_ to_fp 11 53) x1_ack!4960)))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!4963 x1_ack!4960))

(check-sat)
(exit)
