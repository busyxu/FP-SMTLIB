(declare-fun a_ack!679 () (_ BitVec 32))
(declare-fun b_ack!678 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!679 #x00000000)))
(assert (not (= #x00000000 a_ack!679)))
(assert (not (= #x00000001 a_ack!679)))
(assert (not (= #x00000002 a_ack!679)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!678) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!678) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!678) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!678) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvsub #x00000001 a_ack!679))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvsub #x00000001 a_ack!679))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!678) ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvsub #x00000001 a_ack!679)))
                  ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvsub #x00000001 a_ack!679))
                   (CF_floor ((_ to_fp 11 53)
                               roundNearestTiesToEven
                               (bvsub #x00000001 a_ack!679))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!678) ((_ to_fp 11 53) #xc085eeaad5511c64)))

(check-sat)
(exit)
