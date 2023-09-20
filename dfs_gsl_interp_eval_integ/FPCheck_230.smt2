(declare-fun x1_ack!2700 () (_ BitVec 64))
(declare-fun x0_ack!2704 () (_ BitVec 64))
(declare-fun x2_ack!2701 () (_ BitVec 64))
(declare-fun b_ack!2703 () (_ BitVec 64))
(declare-fun a_ack!2702 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2704) ((_ to_fp 11 53) x1_ack!2700)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2700) ((_ to_fp 11 53) x2_ack!2701)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2700)
                       ((_ to_fp 11 53) x0_ack!2704))
               ((_ to_fp 11 53) x0_ack!2704))
       ((_ to_fp 11 53) x1_ack!2700)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2700)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2700)
                       ((_ to_fp 11 53) x0_ack!2704)))
       ((_ to_fp 11 53) x0_ack!2704)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2701)
                       ((_ to_fp 11 53) x1_ack!2700))
               ((_ to_fp 11 53) x1_ack!2700))
       ((_ to_fp 11 53) x2_ack!2701)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2701)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2701)
                       ((_ to_fp 11 53) x1_ack!2700)))
       ((_ to_fp 11 53) x1_ack!2700)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2700)
                    ((_ to_fp 11 53) x0_ack!2704))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2701)
                    ((_ to_fp 11 53) x1_ack!2700))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2702) ((_ to_fp 11 53) b_ack!2703))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2702) ((_ to_fp 11 53) x0_ack!2704))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2703) ((_ to_fp 11 53) x2_ack!2701))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2702) ((_ to_fp 11 53) b_ack!2703))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2702) ((_ to_fp 11 53) x0_ack!2704))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2702) ((_ to_fp 11 53) x1_ack!2700))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2703) ((_ to_fp 11 53) x0_ack!2704))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2703) ((_ to_fp 11 53) x1_ack!2700)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2700) ((_ to_fp 11 53) b_ack!2703))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2700)
                    ((_ to_fp 11 53) x0_ack!2704))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2701)
                    ((_ to_fp 11 53) x1_ack!2700))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!2700)
          ((_ to_fp 11 53) x1_ack!2700))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!2700)
          ((_ to_fp 11 53) x1_ack!2700))))

(check-sat)
(exit)
