(declare-fun x1_ack!2227 () (_ BitVec 64))
(declare-fun x0_ack!2231 () (_ BitVec 64))
(declare-fun x2_ack!2228 () (_ BitVec 64))
(declare-fun b_ack!2230 () (_ BitVec 64))
(declare-fun a_ack!2229 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2231) ((_ to_fp 11 53) x1_ack!2227)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2227) ((_ to_fp 11 53) x2_ack!2228)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2227)
                       ((_ to_fp 11 53) x0_ack!2231))
               ((_ to_fp 11 53) x0_ack!2231))
       ((_ to_fp 11 53) x1_ack!2227)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2227)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2227)
                       ((_ to_fp 11 53) x0_ack!2231)))
       ((_ to_fp 11 53) x0_ack!2231)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2228)
                       ((_ to_fp 11 53) x1_ack!2227))
               ((_ to_fp 11 53) x1_ack!2227))
       ((_ to_fp 11 53) x2_ack!2228)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2228)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2228)
                       ((_ to_fp 11 53) x1_ack!2227)))
       ((_ to_fp 11 53) x1_ack!2227)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2227)
                    ((_ to_fp 11 53) x0_ack!2231))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2228)
                    ((_ to_fp 11 53) x1_ack!2227))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2229) ((_ to_fp 11 53) b_ack!2230))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2229) ((_ to_fp 11 53) x0_ack!2231))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2230) ((_ to_fp 11 53) x2_ack!2228))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2229) ((_ to_fp 11 53) b_ack!2230))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2229) ((_ to_fp 11 53) x0_ack!2231))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2229) ((_ to_fp 11 53) x1_ack!2227))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2230) ((_ to_fp 11 53) x0_ack!2231))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2230) ((_ to_fp 11 53) x1_ack!2227)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2227) ((_ to_fp 11 53) b_ack!2230))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2227)
                    ((_ to_fp 11 53) x0_ack!2231))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2228)
                    ((_ to_fp 11 53) x1_ack!2227))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW b_ack!2230 x1_ack!2227))

(check-sat)
(exit)
