(declare-fun b_ack!796 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!796))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) b_ack!796))
             ((_ to_fp 11 53) #x4008000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) b_ack!796))
             ((_ to_fp 11 53) #x4020000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4030000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!796)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.abs a!3)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3c814b37f4b51f71))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3c814b37f4b51f71))))
      (a!8 (fp.abs (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3c814b37f4b51f71)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.abs a!5)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3cb3749ef34bc35f))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #xbcb3749ef34bc35f))))
      (a!12 (fp.abs (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #xbcb3749ef34bc35f)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven (fp.abs a!7) a!8)
                           ((_ to_fp 11 53) #x3cb87fe49aab41e0))))
      (a!10 (fp.sub roundNearestTiesToEven
                    a!7
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x3c814b37f4b51f71)))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            a!10
                            ((_ to_fp 11 53) #xbcb87fe49aab41e0)))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven (fp.abs a!11) a!12)
                            ((_ to_fp 11 53) #x3cdfb49140a1644f))))
      (a!14 (fp.sub roundNearestTiesToEven
                    a!11
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #xbcb3749ef34bc35f)))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            a!14
                            ((_ to_fp 11 53) #x3cdfb49140a1644f)))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.abs a!15)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #xbcb87fe49aab41e0)))))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!15
                            (fp.add roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #xbcb87fe49aab41e0)))
                    ((_ to_fp 11 53) #x3cf13428ff6ed89c))))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!17)))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.abs a!18)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    a!14
                                    ((_ to_fp 11 53) #x3cdfb49140a1644f)))))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!18
                            (fp.add roundNearestTiesToEven
                                    a!14
                                    ((_ to_fp 11 53) #x3cdfb49140a1644f)))
                    ((_ to_fp 11 53) #xbd057b6f81f8fd0e))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!13
                            (fp.add roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #x3cf13428ff6ed89c)))
                    (fp.add roundNearestTiesToEven
                            a!19
                            ((_ to_fp 11 53) #x3d057b6f81f8fd0e))))
      (a!22 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!21)))
(let ((a!23 (fp.add roundNearestTiesToEven
                    a!20
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!22)
                                    (fp.abs a!17))
                            ((_ to_fp 11 53) #x3d275e38b1686811))))
      (a!24 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!22 a!17)
                            ((_ to_fp 11 53) #xbd275e38b1686811)))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    a!23
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!24)
                                    (fp.abs a!21))
                            ((_ to_fp 11 53) #x3d1153dd90af7a01))))
      (a!26 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!24 a!21)
                            ((_ to_fp 11 53) #x3d1153dd90af7a01)))))
(let ((a!27 (fp.add roundNearestTiesToEven
                    (fp.abs a!26)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!22 a!17)
                                    ((_ to_fp 11 53) #xbd275e38b1686811)))))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!26
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!22 a!17)
                                    ((_ to_fp 11 53) #xbd275e38b1686811)))
                    ((_ to_fp 11 53) #x3d5b1cc4818bd483))))
(let ((a!29 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!28)))
(let ((a!30 (fp.add roundNearestTiesToEven
                    (fp.abs a!29)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!24 a!21)
                                    ((_ to_fp 11 53) #x3d1153dd90af7a01)))))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!29
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!24 a!21)
                                    ((_ to_fp 11 53) #x3d1153dd90af7a01)))
                    ((_ to_fp 11 53) #x3d69434256cbafff))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!25
                            (fp.add roundNearestTiesToEven
                                    a!27
                                    ((_ to_fp 11 53) #x3d5b1cc4818bd483)))
                    (fp.add roundNearestTiesToEven
                            a!30
                            ((_ to_fp 11 53) #x3d69434256cbafff))))
      (a!33 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!32)))
(let ((a!34 (fp.add roundNearestTiesToEven
                    a!31
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!33)
                                    (fp.abs a!28))
                            ((_ to_fp 11 53) #x3d7f90503bfe65f2))))
      (a!35 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!33 a!28)
                            ((_ to_fp 11 53) #xbd7f90503bfe65f2)))))
(let ((a!36 (fp.add roundNearestTiesToEven
                    a!34
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!35)
                                    (fp.abs a!32))
                            ((_ to_fp 11 53) #x3dad0fd580a89e08))))
      (a!37 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!35 a!32)
                            ((_ to_fp 11 53) #xbdad0fd580a89e08)))))
(let ((a!38 (fp.add roundNearestTiesToEven
                    (fp.abs a!37)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!33 a!28)
                                    ((_ to_fp 11 53) #xbd7f90503bfe65f2)))))
      (a!39 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!37
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!33 a!28)
                                    ((_ to_fp 11 53) #xbd7f90503bfe65f2)))
                    ((_ to_fp 11 53) #xbdc1511c7b4b7113))))
(let ((a!40 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!39)))
(let ((a!41 (fp.add roundNearestTiesToEven
                    (fp.abs a!40)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!32)
                                    ((_ to_fp 11 53) #xbdad0fd580a89e08)))))
      (a!43 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!40
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!35 a!32)
                                    ((_ to_fp 11 53) #xbdad0fd580a89e08)))
                    ((_ to_fp 11 53) #x3daa24fda5ac4a25))))
(let ((a!42 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!36
                            (fp.add roundNearestTiesToEven
                                    a!38
                                    ((_ to_fp 11 53) #x3dc1511c7b4b7113)))
                    (fp.add roundNearestTiesToEven
                            a!41
                            ((_ to_fp 11 53) #x3daa24fda5ac4a25))))
      (a!44 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!43)))
(let ((a!45 (fp.add roundNearestTiesToEven
                    a!42
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!44)
                                    (fp.abs a!39))
                            ((_ to_fp 11 53) #x3e00f9ccb61ab9a0))))
      (a!46 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!44 a!39)
                            ((_ to_fp 11 53) #x3e00f9ccb61ab9a0)))))
(let ((a!47 (fp.add roundNearestTiesToEven
                    a!45
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!46)
                                    (fp.abs a!43))
                            ((_ to_fp 11 53) #x3e2d2c64a9c0b0ac))))
      (a!48 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!46 a!43)
                            ((_ to_fp 11 53) #x3e2d2c64a9c0b0ac)))))
(let ((a!49 (fp.add roundNearestTiesToEven
                    (fp.abs a!48)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!44 a!39)
                                    ((_ to_fp 11 53) #x3e00f9ccb61ab9a0)))))
      (a!50 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!48
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!44 a!39)
                                    ((_ to_fp 11 53) #x3e00f9ccb61ab9a0)))
                    ((_ to_fp 11 53) #x3e58569280edf9e5))))
(let ((a!51 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!50)))
(let ((a!52 (fp.add roundNearestTiesToEven
                    (fp.abs a!51)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!46 a!43)
                                    ((_ to_fp 11 53) #x3e2d2c64a9c0b0ac)))))
      (a!54 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!51
                            (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!46 a!43)
                                    ((_ to_fp 11 53) #x3e2d2c64a9c0b0ac)))
                    ((_ to_fp 11 53) #x3e8b8007d9c3a27d))))
(let ((a!53 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!47
                            (fp.add roundNearestTiesToEven
                                    a!49
                                    ((_ to_fp 11 53) #x3e58569280edf9e5)))
                    (fp.add roundNearestTiesToEven
                            a!52
                            ((_ to_fp 11 53) #x3e8b8007d9c3a27d))))
      (a!55 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000)))
                    a!54)))
  (FPCHECK_FADD_OVERFLOW
    a!53
    (fp.add roundNearestTiesToEven
            (fp.add roundNearestTiesToEven (fp.abs a!55) (fp.abs a!50))
            ((_ to_fp 11 53) #x3ec8412bc1013d6b)))))))))))))))))))))))))))))))))))

(check-sat)
(exit)
