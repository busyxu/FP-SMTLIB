(declare-fun x1_ack!2207 () (_ BitVec 64))
(declare-fun x0_ack!2211 () (_ BitVec 64))
(declare-fun x2_ack!2208 () (_ BitVec 64))
(declare-fun b_ack!2210 () (_ BitVec 64))
(declare-fun a_ack!2209 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2211) ((_ to_fp 11 53) x1_ack!2207)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2207) ((_ to_fp 11 53) x2_ack!2208)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2207)
                       ((_ to_fp 11 53) x0_ack!2211))
               ((_ to_fp 11 53) x0_ack!2211))
       ((_ to_fp 11 53) x1_ack!2207)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2207)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2207)
                       ((_ to_fp 11 53) x0_ack!2211)))
       ((_ to_fp 11 53) x0_ack!2211)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2208)
                       ((_ to_fp 11 53) x1_ack!2207))
               ((_ to_fp 11 53) x1_ack!2207))
       ((_ to_fp 11 53) x2_ack!2208)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2208)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2208)
                       ((_ to_fp 11 53) x1_ack!2207)))
       ((_ to_fp 11 53) x1_ack!2207)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2207)
                    ((_ to_fp 11 53) x0_ack!2211))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2208)
                    ((_ to_fp 11 53) x1_ack!2207))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2209) ((_ to_fp 11 53) b_ack!2210))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2209) ((_ to_fp 11 53) x0_ack!2211))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2210) ((_ to_fp 11 53) x2_ack!2208))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2209) ((_ to_fp 11 53) b_ack!2210))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2209) ((_ to_fp 11 53) x0_ack!2211))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2209) ((_ to_fp 11 53) x1_ack!2207))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2210) ((_ to_fp 11 53) x0_ack!2211))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2210) ((_ to_fp 11 53) x1_ack!2207)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2207) ((_ to_fp 11 53) b_ack!2210))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2207)
                    ((_ to_fp 11 53) x0_ack!2211))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2208)
                    ((_ to_fp 11 53) x1_ack!2207))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
