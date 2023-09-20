(declare-fun x1_ack!817 () (_ BitVec 64))
(declare-fun x0_ack!821 () (_ BitVec 64))
(declare-fun x2_ack!818 () (_ BitVec 64))
(declare-fun b_ack!820 () (_ BitVec 64))
(declare-fun a_ack!819 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!821) ((_ to_fp 11 53) x1_ack!817)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!817) ((_ to_fp 11 53) x2_ack!818)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!817)
                       ((_ to_fp 11 53) x0_ack!821))
               ((_ to_fp 11 53) x0_ack!821))
       ((_ to_fp 11 53) x1_ack!817)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!817)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!817)
                       ((_ to_fp 11 53) x0_ack!821)))
       ((_ to_fp 11 53) x0_ack!821)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!818)
                       ((_ to_fp 11 53) x1_ack!817))
               ((_ to_fp 11 53) x1_ack!817))
       ((_ to_fp 11 53) x2_ack!818)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!818)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!818)
                       ((_ to_fp 11 53) x1_ack!817)))
       ((_ to_fp 11 53) x1_ack!817)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!817)
                    ((_ to_fp 11 53) x0_ack!821))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!818)
                    ((_ to_fp 11 53) x1_ack!817))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!819) ((_ to_fp 11 53) b_ack!820))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!819) ((_ to_fp 11 53) x0_ack!821))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!820) ((_ to_fp 11 53) x2_ack!818))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!819) ((_ to_fp 11 53) b_ack!820))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!819) ((_ to_fp 11 53) x0_ack!821))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!819) ((_ to_fp 11 53) x1_ack!817))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!820) ((_ to_fp 11 53) x0_ack!821)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!817)
                    ((_ to_fp 11 53) x0_ack!821))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!817)
          ((_ to_fp 11 53) x0_ack!821))))

(check-sat)
(exit)
