(declare-fun x1_ack!6933 () (_ BitVec 64))
(declare-fun x0_ack!6937 () (_ BitVec 64))
(declare-fun x2_ack!6934 () (_ BitVec 64))
(declare-fun b_ack!6936 () (_ BitVec 64))
(declare-fun a_ack!6935 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6937) ((_ to_fp 11 53) x1_ack!6933)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6933) ((_ to_fp 11 53) x2_ack!6934)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6933)
                       ((_ to_fp 11 53) x0_ack!6937))
               ((_ to_fp 11 53) x0_ack!6937))
       ((_ to_fp 11 53) x1_ack!6933)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6933)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6933)
                       ((_ to_fp 11 53) x0_ack!6937)))
       ((_ to_fp 11 53) x0_ack!6937)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6934)
                       ((_ to_fp 11 53) x1_ack!6933))
               ((_ to_fp 11 53) x1_ack!6933))
       ((_ to_fp 11 53) x2_ack!6934)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6934)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6934)
                       ((_ to_fp 11 53) x1_ack!6933)))
       ((_ to_fp 11 53) x1_ack!6933)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6933)
                    ((_ to_fp 11 53) x0_ack!6937))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6934)
                    ((_ to_fp 11 53) x1_ack!6933))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6935) ((_ to_fp 11 53) b_ack!6936))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6935) ((_ to_fp 11 53) x0_ack!6937))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6936) ((_ to_fp 11 53) x2_ack!6934))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6935) ((_ to_fp 11 53) b_ack!6936))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6935) ((_ to_fp 11 53) x0_ack!6937))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6935) ((_ to_fp 11 53) x1_ack!6933))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6936) ((_ to_fp 11 53) x0_ack!6937))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6936) ((_ to_fp 11 53) x1_ack!6933)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6933) ((_ to_fp 11 53) b_ack!6936))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6933)
                    ((_ to_fp 11 53) x0_ack!6937))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6934)
                    ((_ to_fp 11 53) x1_ack!6933))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!6934)
          ((_ to_fp 11 53) x1_ack!6933))))

(check-sat)
(exit)
