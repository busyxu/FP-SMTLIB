(declare-fun b_ack!627 () (_ BitVec 64))
(declare-fun x_ack!628 () (_ BitVec 64))
(declare-fun a_ack!626 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!628)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!627)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!628) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!628)
                    ((_ to_fp 11 53) b_ack!627))
            ((_ to_fp 11 53) a_ack!626))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!626) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!628)
                    ((_ to_fp 11 53) b_ack!627))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!628)
                    ((_ to_fp 11 53) b_ack!627))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!628)
                    ((_ to_fp 11 53) b_ack!627))
            ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!628)
                    ((_ to_fp 11 53) b_ack!627))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!626)))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!626) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!626)
             (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!628)
                     ((_ to_fp 11 53) b_ack!627)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!628)
                           ((_ to_fp 11 53) b_ack!627))
                   ((_ to_fp 11 53) a_ack!626))))
  (not (fp.lt (fp.mul roundNearestTiesToEven a!1 a!1)
              ((_ to_fp 11 53) a_ack!626)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!626) ((_ to_fp 11 53) #x4024000000000000))))
(assert (FPCHECK_FMUL_ACCURACY #x3fe0000000000000 a_ack!626))

(check-sat)
(exit)
