(declare-fun x1_ack!6879 () (_ BitVec 64))
(declare-fun x0_ack!6883 () (_ BitVec 64))
(declare-fun x2_ack!6880 () (_ BitVec 64))
(declare-fun b_ack!6882 () (_ BitVec 64))
(declare-fun a_ack!6881 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6883) ((_ to_fp 11 53) x1_ack!6879)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6879) ((_ to_fp 11 53) x2_ack!6880)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6879)
                       ((_ to_fp 11 53) x0_ack!6883))
               ((_ to_fp 11 53) x0_ack!6883))
       ((_ to_fp 11 53) x1_ack!6879)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6879)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6879)
                       ((_ to_fp 11 53) x0_ack!6883)))
       ((_ to_fp 11 53) x0_ack!6883)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6880)
                       ((_ to_fp 11 53) x1_ack!6879))
               ((_ to_fp 11 53) x1_ack!6879))
       ((_ to_fp 11 53) x2_ack!6880)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6880)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6880)
                       ((_ to_fp 11 53) x1_ack!6879)))
       ((_ to_fp 11 53) x1_ack!6879)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6879)
                    ((_ to_fp 11 53) x0_ack!6883))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6880)
                    ((_ to_fp 11 53) x1_ack!6879))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6881) ((_ to_fp 11 53) b_ack!6882))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6881) ((_ to_fp 11 53) x0_ack!6883))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6882) ((_ to_fp 11 53) x2_ack!6880))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6881) ((_ to_fp 11 53) b_ack!6882))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6881) ((_ to_fp 11 53) x0_ack!6883))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6881) ((_ to_fp 11 53) x1_ack!6879)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6879) ((_ to_fp 11 53) a_ack!6881))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6882) ((_ to_fp 11 53) x1_ack!6879))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6882) ((_ to_fp 11 53) x2_ack!6880))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6880)
                    ((_ to_fp 11 53) x1_ack!6879))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!6881)
          ((_ to_fp 11 53) x1_ack!6879))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!6881)
          ((_ to_fp 11 53) x1_ack!6879))))

(check-sat)
(exit)
