(declare-fun x1_ack!4162 () (_ BitVec 64))
(declare-fun x0_ack!4166 () (_ BitVec 64))
(declare-fun x2_ack!4163 () (_ BitVec 64))
(declare-fun b_ack!4165 () (_ BitVec 64))
(declare-fun a_ack!4164 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4166) ((_ to_fp 11 53) x1_ack!4162)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4162) ((_ to_fp 11 53) x2_ack!4163)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4162)
                       ((_ to_fp 11 53) x0_ack!4166))
               ((_ to_fp 11 53) x0_ack!4166))
       ((_ to_fp 11 53) x1_ack!4162)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4162)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4162)
                       ((_ to_fp 11 53) x0_ack!4166)))
       ((_ to_fp 11 53) x0_ack!4166)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4163)
                       ((_ to_fp 11 53) x1_ack!4162))
               ((_ to_fp 11 53) x1_ack!4162))
       ((_ to_fp 11 53) x2_ack!4163)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4163)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4163)
                       ((_ to_fp 11 53) x1_ack!4162)))
       ((_ to_fp 11 53) x1_ack!4162)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4162)
                    ((_ to_fp 11 53) x0_ack!4166))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4163)
                    ((_ to_fp 11 53) x1_ack!4162))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4164) ((_ to_fp 11 53) b_ack!4165))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4164) ((_ to_fp 11 53) x0_ack!4166))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4165) ((_ to_fp 11 53) x2_ack!4163))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4164) ((_ to_fp 11 53) b_ack!4165))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4164) ((_ to_fp 11 53) x0_ack!4166))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4164) ((_ to_fp 11 53) x1_ack!4162))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4165) ((_ to_fp 11 53) x0_ack!4166))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4165) ((_ to_fp 11 53) x1_ack!4162))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4162)
                    ((_ to_fp 11 53) x0_ack!4166))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW a_ack!4164 x0_ack!4166))

(check-sat)
(exit)
