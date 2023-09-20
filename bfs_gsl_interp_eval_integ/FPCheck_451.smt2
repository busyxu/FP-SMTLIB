(declare-fun x1_ack!5713 () (_ BitVec 64))
(declare-fun x0_ack!5717 () (_ BitVec 64))
(declare-fun x2_ack!5714 () (_ BitVec 64))
(declare-fun b_ack!5716 () (_ BitVec 64))
(declare-fun a_ack!5715 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5717) ((_ to_fp 11 53) x1_ack!5713)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5713) ((_ to_fp 11 53) x2_ack!5714)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5713)
                       ((_ to_fp 11 53) x0_ack!5717))
               ((_ to_fp 11 53) x0_ack!5717))
       ((_ to_fp 11 53) x1_ack!5713)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5713)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5713)
                       ((_ to_fp 11 53) x0_ack!5717)))
       ((_ to_fp 11 53) x0_ack!5717)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5714)
                       ((_ to_fp 11 53) x1_ack!5713))
               ((_ to_fp 11 53) x1_ack!5713))
       ((_ to_fp 11 53) x2_ack!5714)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5714)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5714)
                       ((_ to_fp 11 53) x1_ack!5713)))
       ((_ to_fp 11 53) x1_ack!5713)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5713)
                    ((_ to_fp 11 53) x0_ack!5717))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5714)
                    ((_ to_fp 11 53) x1_ack!5713))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5715) ((_ to_fp 11 53) b_ack!5716))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5715) ((_ to_fp 11 53) x0_ack!5717))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5716) ((_ to_fp 11 53) x2_ack!5714))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5715) ((_ to_fp 11 53) b_ack!5716))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5715) ((_ to_fp 11 53) x0_ack!5717))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5715) ((_ to_fp 11 53) x1_ack!5713))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5716) ((_ to_fp 11 53) x0_ack!5717))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5716) ((_ to_fp 11 53) x1_ack!5713)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5713) ((_ to_fp 11 53) b_ack!5716))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5713)
                    ((_ to_fp 11 53) x0_ack!5717))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW x1_ack!5713 x0_ack!5717))

(check-sat)
(exit)
