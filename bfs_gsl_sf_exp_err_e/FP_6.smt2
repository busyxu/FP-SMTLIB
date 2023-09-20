(declare-fun b_ack!86 () (_ BitVec 64))
(declare-fun a_ack!87 () (_ BitVec 64))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (let ((a!1 (fp.gt (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) a_ack!87)
                          (fp.abs ((_ to_fp 11 53) b_ack!86)))
                  ((_ to_fp 11 53) #x40862e42fefa39ef))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) a_ack!87)
                          (fp.abs ((_ to_fp 11 53) b_ack!86)))
                  ((_ to_fp 11 53) #xc086232bdd7abcd2))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_exp (fp.abs ((_ to_fp 11 53) b_ack!86))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_exp (fp.abs ((_ to_fp 11 53) b_ack!86)))
                   a!1)))
  (fp.gt ((_ to_fp 11 53) #x3cb0000000000000) a!2))))

(check-sat)
(exit)
