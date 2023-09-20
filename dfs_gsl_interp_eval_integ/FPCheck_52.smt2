(declare-fun x1_ack!458 () (_ BitVec 64))
(declare-fun x0_ack!464 () (_ BitVec 64))
(declare-fun x2_ack!459 () (_ BitVec 64))
(declare-fun b_ack!463 () (_ BitVec 64))
(declare-fun a_ack!462 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!460 () (_ BitVec 64))
(declare-fun y1_ack!461 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!464) ((_ to_fp 11 53) x1_ack!458)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!458) ((_ to_fp 11 53) x2_ack!459)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!458)
                       ((_ to_fp 11 53) x0_ack!464))
               ((_ to_fp 11 53) x0_ack!464))
       ((_ to_fp 11 53) x1_ack!458)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!458)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!458)
                       ((_ to_fp 11 53) x0_ack!464)))
       ((_ to_fp 11 53) x0_ack!464)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!459)
                       ((_ to_fp 11 53) x1_ack!458))
               ((_ to_fp 11 53) x1_ack!458))
       ((_ to_fp 11 53) x2_ack!459)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!459)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!459)
                       ((_ to_fp 11 53) x1_ack!458)))
       ((_ to_fp 11 53) x1_ack!458)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!458)
                    ((_ to_fp 11 53) x0_ack!464))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!459)
                    ((_ to_fp 11 53) x1_ack!458))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!462) ((_ to_fp 11 53) b_ack!463))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!462) ((_ to_fp 11 53) x0_ack!464))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!463) ((_ to_fp 11 53) x2_ack!459))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!462) ((_ to_fp 11 53) b_ack!463))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!462) ((_ to_fp 11 53) x0_ack!464))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!462) ((_ to_fp 11 53) x1_ack!458))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!463) ((_ to_fp 11 53) x0_ack!464))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!463) ((_ to_fp 11 53) x1_ack!458)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!458) ((_ to_fp 11 53) b_ack!463))))
(assert (FPCHECK_FSUB_OVERFLOW y1_ack!461 y0_ack!460))

(check-sat)
(exit)
