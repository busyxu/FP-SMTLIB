(declare-fun x_ack!45 () (_ BitVec 64))
(declare-fun nu1_ack!44 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!45) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!45) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (not (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) #x8000000000000000)
                               (CF_log x_ack!45))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not (and a!1
            (fp.eq ((_ to_fp 11 53) nu1_ack!44)
                   ((_ to_fp 11 53) #x0000000000000000))))))

(check-sat)
(exit)
