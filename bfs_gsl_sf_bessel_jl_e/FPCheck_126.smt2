(declare-fun a_ack!462 () (_ BitVec 32))
(declare-fun b_ack!461 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!462 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!461) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!461) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!462)))
(assert (not (= #x00000001 a_ack!462)))
(assert (= #x00000002 a_ack!462))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!461) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!461))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!461))
            ((_ to_fp 11 53) #x3ff4cccccccccccd))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!461)
                                   ((_ to_fp 11 53) b_ack!461)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FMUL_OVERFLOW a!1 (CF_sin b_ack!461))))

(check-sat)
(exit)
