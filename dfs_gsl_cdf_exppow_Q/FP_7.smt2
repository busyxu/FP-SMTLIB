(declare-fun a_ack!87 () (_ BitVec 64))
(declare-fun x_ack!89 () (_ BitVec 64))
(declare-fun b_ack!88 () (_ BitVec 64))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!89)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) a_ack!87)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!89)
                    ((_ to_fp 11 53) a_ack!87))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!88) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!88))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (CF_pow (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!89)
                                  ((_ to_fp 11 53) a_ack!87))
                          b_ack!88)
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (CF_pow (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!89)
                                  ((_ to_fp 11 53) a_ack!87))
                          b_ack!88)
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!88))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
