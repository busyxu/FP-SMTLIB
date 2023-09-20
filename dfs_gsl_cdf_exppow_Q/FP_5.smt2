(declare-fun a_ack!75 () (_ BitVec 64))
(declare-fun x_ack!77 () (_ BitVec 64))
(declare-fun b_ack!76 () (_ BitVec 64))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!77)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) a_ack!75)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!77)
                    ((_ to_fp 11 53) a_ack!75))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!76) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!76))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (CF_pow (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!77)
                       ((_ to_fp 11 53) a_ack!75))
               b_ack!76)
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
