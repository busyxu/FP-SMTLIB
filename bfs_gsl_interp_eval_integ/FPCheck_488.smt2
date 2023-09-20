(declare-fun x1_ack!6140 () (_ BitVec 64))
(declare-fun x0_ack!6144 () (_ BitVec 64))
(declare-fun x2_ack!6141 () (_ BitVec 64))
(declare-fun b_ack!6143 () (_ BitVec 64))
(declare-fun a_ack!6142 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6144) ((_ to_fp 11 53) x1_ack!6140)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6140) ((_ to_fp 11 53) x2_ack!6141)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6140)
                       ((_ to_fp 11 53) x0_ack!6144))
               ((_ to_fp 11 53) x0_ack!6144))
       ((_ to_fp 11 53) x1_ack!6140)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6140)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6140)
                       ((_ to_fp 11 53) x0_ack!6144)))
       ((_ to_fp 11 53) x0_ack!6144)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6141)
                       ((_ to_fp 11 53) x1_ack!6140))
               ((_ to_fp 11 53) x1_ack!6140))
       ((_ to_fp 11 53) x2_ack!6141)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6141)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6141)
                       ((_ to_fp 11 53) x1_ack!6140)))
       ((_ to_fp 11 53) x1_ack!6140)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6140)
                    ((_ to_fp 11 53) x0_ack!6144))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6141)
                    ((_ to_fp 11 53) x1_ack!6140))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6142) ((_ to_fp 11 53) b_ack!6143))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6142) ((_ to_fp 11 53) x0_ack!6144))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6143) ((_ to_fp 11 53) x2_ack!6141))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6142) ((_ to_fp 11 53) b_ack!6143))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6142) ((_ to_fp 11 53) x0_ack!6144))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6142) ((_ to_fp 11 53) x1_ack!6140))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6143) ((_ to_fp 11 53) x0_ack!6144))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6143) ((_ to_fp 11 53) x1_ack!6140)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6140) ((_ to_fp 11 53) b_ack!6143))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6140)
                    ((_ to_fp 11 53) x0_ack!6144))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!6142)
          ((_ to_fp 11 53) x0_ack!6144))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!6142)
          ((_ to_fp 11 53) x0_ack!6144))))

(check-sat)
(exit)
