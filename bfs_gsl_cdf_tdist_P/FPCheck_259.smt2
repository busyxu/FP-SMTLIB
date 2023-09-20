(declare-fun mu_ack!627 () (_ BitVec 64))
(declare-fun x_ack!628 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!627) ((_ to_fp 11 53) #x403e000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!628)
               ((_ to_fp 11 53) x_ack!628))
       ((_ to_fp 11 53) mu_ack!627)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!628)
                           ((_ to_fp 11 53) x_ack!628))
                   ((_ to_fp 11 53) mu_ack!627))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!628)
                           ((_ to_fp 11 53) x_ack!628))
                   ((_ to_fp 11 53) mu_ack!627))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!628) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_ACCURACY mu_ack!627 #x4000000000000000))

(check-sat)
(exit)
