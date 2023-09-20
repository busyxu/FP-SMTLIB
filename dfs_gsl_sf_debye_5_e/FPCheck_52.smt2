(declare-fun a_ack!94 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!94) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!94) ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!94) ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!94) ((_ to_fp 11 53) #x4041acdd632f662a))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!94) ((_ to_fp 11 53) #x4086232bdd7abcd2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x405e000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x405e000000000000)
                           ((_ to_fp 11 53) a_ack!94))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x404e000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!94)
                           ((_ to_fp 11 53) a_ack!94)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x405e000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x405e000000000000)
                           ((_ to_fp 11 53) a_ack!94))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x404e000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!94)
                           ((_ to_fp 11 53) a_ack!94)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4034000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!94)
                  ((_ to_fp 11 53) a_ack!94)))
  a_ack!94))

(check-sat)
(exit)
