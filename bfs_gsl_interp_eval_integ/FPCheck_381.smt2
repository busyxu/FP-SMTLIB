(declare-fun x1_ack!4752 () (_ BitVec 64))
(declare-fun x0_ack!4756 () (_ BitVec 64))
(declare-fun x2_ack!4753 () (_ BitVec 64))
(declare-fun b_ack!4755 () (_ BitVec 64))
(declare-fun a_ack!4754 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4756) ((_ to_fp 11 53) x1_ack!4752)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4752) ((_ to_fp 11 53) x2_ack!4753)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4752)
                       ((_ to_fp 11 53) x0_ack!4756))
               ((_ to_fp 11 53) x0_ack!4756))
       ((_ to_fp 11 53) x1_ack!4752)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4752)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4752)
                       ((_ to_fp 11 53) x0_ack!4756)))
       ((_ to_fp 11 53) x0_ack!4756)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4753)
                       ((_ to_fp 11 53) x1_ack!4752))
               ((_ to_fp 11 53) x1_ack!4752))
       ((_ to_fp 11 53) x2_ack!4753)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4753)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4753)
                       ((_ to_fp 11 53) x1_ack!4752)))
       ((_ to_fp 11 53) x1_ack!4752)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4752)
                    ((_ to_fp 11 53) x0_ack!4756))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4753)
                    ((_ to_fp 11 53) x1_ack!4752))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4754) ((_ to_fp 11 53) b_ack!4755))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4754) ((_ to_fp 11 53) x0_ack!4756))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4755) ((_ to_fp 11 53) x2_ack!4753))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4754) ((_ to_fp 11 53) b_ack!4755))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4754) ((_ to_fp 11 53) x0_ack!4756))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4754) ((_ to_fp 11 53) x1_ack!4752))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4755) ((_ to_fp 11 53) x0_ack!4756))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4755) ((_ to_fp 11 53) x1_ack!4752))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4752)
                    ((_ to_fp 11 53) x0_ack!4756))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW b_ack!4755 a_ack!4754))

(check-sat)
(exit)
