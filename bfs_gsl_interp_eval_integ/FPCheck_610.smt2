(declare-fun x1_ack!7649 () (_ BitVec 64))
(declare-fun x0_ack!7653 () (_ BitVec 64))
(declare-fun x2_ack!7650 () (_ BitVec 64))
(declare-fun b_ack!7652 () (_ BitVec 64))
(declare-fun a_ack!7651 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7653) ((_ to_fp 11 53) x1_ack!7649)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7649) ((_ to_fp 11 53) x2_ack!7650)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7649)
                       ((_ to_fp 11 53) x0_ack!7653))
               ((_ to_fp 11 53) x0_ack!7653))
       ((_ to_fp 11 53) x1_ack!7649)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7649)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7649)
                       ((_ to_fp 11 53) x0_ack!7653)))
       ((_ to_fp 11 53) x0_ack!7653)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7650)
                       ((_ to_fp 11 53) x1_ack!7649))
               ((_ to_fp 11 53) x1_ack!7649))
       ((_ to_fp 11 53) x2_ack!7650)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7650)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7650)
                       ((_ to_fp 11 53) x1_ack!7649)))
       ((_ to_fp 11 53) x1_ack!7649)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7649)
                    ((_ to_fp 11 53) x0_ack!7653))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7650)
                    ((_ to_fp 11 53) x1_ack!7649))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7651) ((_ to_fp 11 53) b_ack!7652))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7651) ((_ to_fp 11 53) x0_ack!7653))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7652) ((_ to_fp 11 53) x2_ack!7650))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7651) ((_ to_fp 11 53) b_ack!7652))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7651) ((_ to_fp 11 53) x0_ack!7653))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7651) ((_ to_fp 11 53) x1_ack!7649))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7652) ((_ to_fp 11 53) x0_ack!7653))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7652) ((_ to_fp 11 53) x1_ack!7649)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7649) ((_ to_fp 11 53) b_ack!7652))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7649)
                    ((_ to_fp 11 53) x0_ack!7653))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7650)
                    ((_ to_fp 11 53) x1_ack!7649))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW b_ack!7652 x1_ack!7649))

(check-sat)
(exit)
