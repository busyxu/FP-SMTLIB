(declare-fun c_ack!3065 () (_ BitVec 64))
(declare-fun b_ack!3064 () (_ BitVec 64))
(declare-fun a_ack!3066 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (fp.eq ((_ to_fp 11 53) c_ack!3065) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3064) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3066) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) c_ack!3065) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.leq (fp.sub roundNearestTiesToEven
                (fp.add roundNearestTiesToEven
                        ((_ to_fp 11 53) #x3ff0000000000000)
                        ((_ to_fp 11 53) a_ack!3066))
                ((_ to_fp 11 53) b_ack!3064))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!3066))
                   ((_ to_fp 11 53) b_ack!3064))))
  (fp.eq a!1 (CF_floor a!1))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!3064) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3064) (CF_floor b_ack!3064))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!3064) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!3064)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) b_ack!3064)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!3064)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!3064)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
