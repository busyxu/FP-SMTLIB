(declare-fun a_ack!31 () (_ BitVec 64))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!31) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!31) ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!31) ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!31) ((_ to_fp 11 53) #x4041acdd632f662a))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!31) ((_ to_fp 11 53) #x4086232bdd7abcd2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!31)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!31)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ffa51a6625307d3)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ffa51a6625307d3))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!31)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!31)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ffa51a6625307d3)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ffa51a6625307d3)
                         a!1))
         a!1)))

(check-sat)
(exit)
