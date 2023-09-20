(declare-fun x1_ack!5024 () (_ BitVec 64))
(declare-fun x0_ack!5030 () (_ BitVec 64))
(declare-fun x2_ack!5025 () (_ BitVec 64))
(declare-fun b_ack!5029 () (_ BitVec 64))
(declare-fun a_ack!5028 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!5026 () (_ BitVec 64))
(declare-fun y1_ack!5027 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5030) ((_ to_fp 11 53) x1_ack!5024)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5024) ((_ to_fp 11 53) x2_ack!5025)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5024)
                       ((_ to_fp 11 53) x0_ack!5030))
               ((_ to_fp 11 53) x0_ack!5030))
       ((_ to_fp 11 53) x1_ack!5024)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5024)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5024)
                       ((_ to_fp 11 53) x0_ack!5030)))
       ((_ to_fp 11 53) x0_ack!5030)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5025)
                       ((_ to_fp 11 53) x1_ack!5024))
               ((_ to_fp 11 53) x1_ack!5024))
       ((_ to_fp 11 53) x2_ack!5025)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5025)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5025)
                       ((_ to_fp 11 53) x1_ack!5024)))
       ((_ to_fp 11 53) x1_ack!5024)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5024)
                    ((_ to_fp 11 53) x0_ack!5030))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5025)
                    ((_ to_fp 11 53) x1_ack!5024))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5028) ((_ to_fp 11 53) b_ack!5029))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5028) ((_ to_fp 11 53) x0_ack!5030))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5029) ((_ to_fp 11 53) x2_ack!5025))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5028) ((_ to_fp 11 53) b_ack!5029))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5028) ((_ to_fp 11 53) x0_ack!5030))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5028) ((_ to_fp 11 53) x1_ack!5024))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5029) ((_ to_fp 11 53) x0_ack!5030))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5029) ((_ to_fp 11 53) x1_ack!5024)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5024) ((_ to_fp 11 53) b_ack!5029))))
(assert (FPCHECK_FSUB_UNDERFLOW y1_ack!5027 y0_ack!5026))

(check-sat)
(exit)
