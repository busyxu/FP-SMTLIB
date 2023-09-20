(declare-fun x1_ack!6934 () (_ BitVec 64))
(declare-fun x0_ack!6938 () (_ BitVec 64))
(declare-fun x2_ack!6935 () (_ BitVec 64))
(declare-fun b_ack!6937 () (_ BitVec 64))
(declare-fun a_ack!6936 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6938) ((_ to_fp 11 53) x1_ack!6934)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6934) ((_ to_fp 11 53) x2_ack!6935)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6934)
                       ((_ to_fp 11 53) x0_ack!6938))
               ((_ to_fp 11 53) x0_ack!6938))
       ((_ to_fp 11 53) x1_ack!6934)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6934)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6934)
                       ((_ to_fp 11 53) x0_ack!6938)))
       ((_ to_fp 11 53) x0_ack!6938)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6935)
                       ((_ to_fp 11 53) x1_ack!6934))
               ((_ to_fp 11 53) x1_ack!6934))
       ((_ to_fp 11 53) x2_ack!6935)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6935)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6935)
                       ((_ to_fp 11 53) x1_ack!6934)))
       ((_ to_fp 11 53) x1_ack!6934)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6934)
                    ((_ to_fp 11 53) x0_ack!6938))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6935)
                    ((_ to_fp 11 53) x1_ack!6934))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6936) ((_ to_fp 11 53) b_ack!6937))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6936) ((_ to_fp 11 53) x0_ack!6938))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6937) ((_ to_fp 11 53) x2_ack!6935))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6936) ((_ to_fp 11 53) b_ack!6937))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6936) ((_ to_fp 11 53) x0_ack!6938))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6936) ((_ to_fp 11 53) x1_ack!6934)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6934) ((_ to_fp 11 53) a_ack!6936))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6937) ((_ to_fp 11 53) x1_ack!6934))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6937) ((_ to_fp 11 53) x2_ack!6935))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6935)
                    ((_ to_fp 11 53) x1_ack!6934))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!6937)
          ((_ to_fp 11 53) x1_ack!6934))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!6937)
          ((_ to_fp 11 53) x1_ack!6934))))

(check-sat)
(exit)
