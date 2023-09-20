(declare-fun x1_ack!6253 () (_ BitVec 64))
(declare-fun x0_ack!6257 () (_ BitVec 64))
(declare-fun x2_ack!6254 () (_ BitVec 64))
(declare-fun b_ack!6256 () (_ BitVec 64))
(declare-fun a_ack!6255 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6257) ((_ to_fp 11 53) x1_ack!6253)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6253) ((_ to_fp 11 53) x2_ack!6254)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6253)
                       ((_ to_fp 11 53) x0_ack!6257))
               ((_ to_fp 11 53) x0_ack!6257))
       ((_ to_fp 11 53) x1_ack!6253)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6253)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6253)
                       ((_ to_fp 11 53) x0_ack!6257)))
       ((_ to_fp 11 53) x0_ack!6257)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6254)
                       ((_ to_fp 11 53) x1_ack!6253))
               ((_ to_fp 11 53) x1_ack!6253))
       ((_ to_fp 11 53) x2_ack!6254)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6254)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6254)
                       ((_ to_fp 11 53) x1_ack!6253)))
       ((_ to_fp 11 53) x1_ack!6253)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6253)
                    ((_ to_fp 11 53) x0_ack!6257))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6254)
                    ((_ to_fp 11 53) x1_ack!6253))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6255) ((_ to_fp 11 53) b_ack!6256))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6255) ((_ to_fp 11 53) x0_ack!6257))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6256) ((_ to_fp 11 53) x2_ack!6254))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6255) ((_ to_fp 11 53) b_ack!6256))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6255) ((_ to_fp 11 53) x0_ack!6257))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6255) ((_ to_fp 11 53) x1_ack!6253))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6256) ((_ to_fp 11 53) x0_ack!6257))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6256) ((_ to_fp 11 53) x1_ack!6253)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6253) ((_ to_fp 11 53) b_ack!6256))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6253)
                    ((_ to_fp 11 53) x0_ack!6257))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW x1_ack!6253 a_ack!6255))

(check-sat)
(exit)
