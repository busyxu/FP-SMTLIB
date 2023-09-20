(declare-fun a_ack!142 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!142) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!142) ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!142) ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!142) ((_ to_fp 11 53) #x4041acdd632f662a))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!142) ((_ to_fp 11 53) #x4086232bdd7abcd2))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!142))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x40133ba004f00621)
                                  ((_ to_fp 11 53) a_ack!142))
                          ((_ to_fp 11 53) a_ack!142))
                  ((_ to_fp 11 53) #x40133ba004f00621))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x40133ba004f00621)
                                  ((_ to_fp 11 53) a_ack!142)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.eq (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) #x40133ba004f00621)
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) #x40133ba004f00621)
                       ((_ to_fp 11 53) a_ack!142)))
       ((_ to_fp 11 53) a_ack!142)))

(check-sat)
(exit)
