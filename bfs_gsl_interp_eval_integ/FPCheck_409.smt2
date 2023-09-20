(declare-fun x1_ack!5136 () (_ BitVec 64))
(declare-fun x0_ack!5140 () (_ BitVec 64))
(declare-fun x2_ack!5137 () (_ BitVec 64))
(declare-fun b_ack!5139 () (_ BitVec 64))
(declare-fun a_ack!5138 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5140) ((_ to_fp 11 53) x1_ack!5136)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5136) ((_ to_fp 11 53) x2_ack!5137)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5136)
                       ((_ to_fp 11 53) x0_ack!5140))
               ((_ to_fp 11 53) x0_ack!5140))
       ((_ to_fp 11 53) x1_ack!5136)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5136)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5136)
                       ((_ to_fp 11 53) x0_ack!5140)))
       ((_ to_fp 11 53) x0_ack!5140)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5137)
                       ((_ to_fp 11 53) x1_ack!5136))
               ((_ to_fp 11 53) x1_ack!5136))
       ((_ to_fp 11 53) x2_ack!5137)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5137)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5137)
                       ((_ to_fp 11 53) x1_ack!5136)))
       ((_ to_fp 11 53) x1_ack!5136)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5136)
                    ((_ to_fp 11 53) x0_ack!5140))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5137)
                    ((_ to_fp 11 53) x1_ack!5136))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5138) ((_ to_fp 11 53) b_ack!5139))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5138) ((_ to_fp 11 53) x0_ack!5140))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5139) ((_ to_fp 11 53) x2_ack!5137))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5138) ((_ to_fp 11 53) b_ack!5139))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5138) ((_ to_fp 11 53) x0_ack!5140))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5138) ((_ to_fp 11 53) x1_ack!5136)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5136) ((_ to_fp 11 53) a_ack!5138))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5139) ((_ to_fp 11 53) x1_ack!5136))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5139) ((_ to_fp 11 53) x2_ack!5137)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5137)
                    ((_ to_fp 11 53) x1_ack!5136))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5138)
                       ((_ to_fp 11 53) x1_ack!5136))
               ((_ to_fp 11 53) x1_ack!5136))
       ((_ to_fp 11 53) a_ack!5138)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5138)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5138)
                       ((_ to_fp 11 53) x1_ack!5136)))
       ((_ to_fp 11 53) x1_ack!5136)))
(assert (FPCHECK_FSUB_ACCURACY b_ack!5139 x1_ack!5136))

(check-sat)
(exit)
