(declare-fun mu_ack!50 () (_ BitVec 64))
(declare-fun x_ack!51 () (_ BitVec 64))
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!50) ((_ to_fp 11 53) #x403e000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!51)
               ((_ to_fp 11 53) x_ack!51))
       ((_ to_fp 11 53) mu_ack!50)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!51)
                           ((_ to_fp 11 53) x_ack!51))
                   ((_ to_fp 11 53) mu_ack!50))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!51)
                           ((_ to_fp 11 53) x_ack!51))
                   ((_ to_fp 11 53) mu_ack!50))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
