(declare-fun a_ack!317 () (_ BitVec 32))
(declare-fun b_ack!316 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!317 #x00000000)))
(assert (not (= #x00000000 a_ack!317)))
(assert (= #x00000001 a_ack!317))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!316) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!316) ((_ to_fp 11 53) #xc024000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!316) ((_ to_fp 11 53) #xc010000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4044000000000000)
                                   ((_ to_fp 11 53) b_ack!316))
                           ((_ to_fp 11 53) #x401c000000000000))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FMUL_ACCURACY #x4000000000000000 a!1)))

(check-sat)
(exit)
