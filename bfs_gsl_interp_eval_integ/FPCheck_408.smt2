(declare-fun x1_ack!5126 () (_ BitVec 64))
(declare-fun x0_ack!5130 () (_ BitVec 64))
(declare-fun x2_ack!5127 () (_ BitVec 64))
(declare-fun b_ack!5129 () (_ BitVec 64))
(declare-fun a_ack!5128 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5130) ((_ to_fp 11 53) x1_ack!5126)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5126) ((_ to_fp 11 53) x2_ack!5127)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5126)
                       ((_ to_fp 11 53) x0_ack!5130))
               ((_ to_fp 11 53) x0_ack!5130))
       ((_ to_fp 11 53) x1_ack!5126)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5126)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5126)
                       ((_ to_fp 11 53) x0_ack!5130)))
       ((_ to_fp 11 53) x0_ack!5130)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5127)
                       ((_ to_fp 11 53) x1_ack!5126))
               ((_ to_fp 11 53) x1_ack!5126))
       ((_ to_fp 11 53) x2_ack!5127)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5127)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5127)
                       ((_ to_fp 11 53) x1_ack!5126)))
       ((_ to_fp 11 53) x1_ack!5126)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5126)
                    ((_ to_fp 11 53) x0_ack!5130))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5127)
                    ((_ to_fp 11 53) x1_ack!5126))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5128) ((_ to_fp 11 53) b_ack!5129))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5128) ((_ to_fp 11 53) x0_ack!5130))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5129) ((_ to_fp 11 53) x2_ack!5127))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5128) ((_ to_fp 11 53) b_ack!5129))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5128) ((_ to_fp 11 53) x0_ack!5130))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5128) ((_ to_fp 11 53) x1_ack!5126)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5126) ((_ to_fp 11 53) a_ack!5128))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5129) ((_ to_fp 11 53) x1_ack!5126))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5129) ((_ to_fp 11 53) x2_ack!5127)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5127)
                    ((_ to_fp 11 53) x1_ack!5126))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5128)
                       ((_ to_fp 11 53) x1_ack!5126))
               ((_ to_fp 11 53) x1_ack!5126))
       ((_ to_fp 11 53) a_ack!5128)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5128)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5128)
                       ((_ to_fp 11 53) x1_ack!5126)))
       ((_ to_fp 11 53) x1_ack!5126)))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!5129 x1_ack!5126))

(check-sat)
(exit)
