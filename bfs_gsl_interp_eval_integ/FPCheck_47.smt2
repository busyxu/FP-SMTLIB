(declare-fun x1_ack!432 () (_ BitVec 64))
(declare-fun x0_ack!438 () (_ BitVec 64))
(declare-fun x2_ack!433 () (_ BitVec 64))
(declare-fun b_ack!437 () (_ BitVec 64))
(declare-fun a_ack!436 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!434 () (_ BitVec 64))
(declare-fun y1_ack!435 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!438) ((_ to_fp 11 53) x1_ack!432)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!432) ((_ to_fp 11 53) x2_ack!433)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!432)
                       ((_ to_fp 11 53) x0_ack!438))
               ((_ to_fp 11 53) x0_ack!438))
       ((_ to_fp 11 53) x1_ack!432)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!432)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!432)
                       ((_ to_fp 11 53) x0_ack!438)))
       ((_ to_fp 11 53) x0_ack!438)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!433)
                       ((_ to_fp 11 53) x1_ack!432))
               ((_ to_fp 11 53) x1_ack!432))
       ((_ to_fp 11 53) x2_ack!433)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!433)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!433)
                       ((_ to_fp 11 53) x1_ack!432)))
       ((_ to_fp 11 53) x1_ack!432)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!432)
                    ((_ to_fp 11 53) x0_ack!438))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!433)
                    ((_ to_fp 11 53) x1_ack!432))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!436) ((_ to_fp 11 53) b_ack!437))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!436) ((_ to_fp 11 53) x0_ack!438))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!437) ((_ to_fp 11 53) x2_ack!433))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!436) ((_ to_fp 11 53) b_ack!437))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!436) ((_ to_fp 11 53) x0_ack!438))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!436) ((_ to_fp 11 53) x1_ack!432))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!437) ((_ to_fp 11 53) x0_ack!438)))
(assert (FPCHECK_FSUB_UNDERFLOW y1_ack!435 y0_ack!434))

(check-sat)
(exit)
