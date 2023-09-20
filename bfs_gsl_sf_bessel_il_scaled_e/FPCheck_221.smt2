(declare-fun b_ack!820 () (_ BitVec 64))
(declare-fun a_ack!821 () (_ BitVec 32))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!820) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!821 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!820) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!821))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!820) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!820))
            ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!820))
       ((_ to_fp 11 53) #x403205966f2b4f12)))
(assert (let ((a!1 (CF_exp (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc000000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!820))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (CF_exp (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc000000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!820))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (FPCHECK_FMUL_UNDERFLOW #x4000000000000000 (fp.abs ((_ to_fp 11 53) b_ack!820))))

(check-sat)
(exit)
