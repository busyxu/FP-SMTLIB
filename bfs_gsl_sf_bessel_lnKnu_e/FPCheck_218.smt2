(declare-fun b_ack!669 () (_ BitVec 64))
(declare-fun a_ack!670 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!669) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!670) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!670) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!669) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!669) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!670) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!670)
                       ((_ to_fp 11 53) #x3fe0000000000000))
               ((_ to_fp 11 53) a_ack!670))
       ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!670)
                       ((_ to_fp 11 53) #x3fe0000000000000))
               ((_ to_fp 11 53) #x3fe0000000000000))
       ((_ to_fp 11 53) a_ack!670)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!669) ((_ to_fp 11 53) #x4000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4000000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) b_ack!669))))

(check-sat)
(exit)
